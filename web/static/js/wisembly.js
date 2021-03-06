$(document).ready(function () {

	$('.try_freemium_analytics_action').on('click', function (event) {
		event.preventDefault();
		ga('send', 'event', 'Call_to_action', 'user_click', 'freemium_created');
		var goTo = this.getAttribute('href');

		setTimeout(function() {
			window.location = goTo;
		}, 300);
	});

	window.config = {
		apiUrl: window.api_url,
		appUrl: window.app_url
	};

	tabs.startListening();
	joinAnEvent.startListening();
	login.startListening();
	subscribe.startListening();
	quotesList.start();
	quizDemo.startListening();
	scrollManager.startListening();
	backToTop.startListening();

	// detect if user is logged on app
	var detectLoggedUser = function () {
		if (basil.get('api_session:current', { storages: ['cookie'] }) && basil.get('api_session:current', { storages: ['cookie'] }).token) {
			if (basil.get('api_session:anonymous', { storages: ['cookie'] }) && basil.get('api_session:anonymous', { storages: ['cookie'] }).token === basil.get('api_session:current', { storages: ['cookie'] }).token) {
				window.isLogged = false;
				return;
			}

			window.isLogged = true;

			// hide and show, deactivate toggle
			$('#login_link').hide();
			$('[data-name=login] a').off('click');

			$('#go_to_app_link').show();
		}
	};

	$.extend(String.prototype, {
		parseURI: function (part) {
			var uri = {},
				uriPartNames = ['url', '', 'protocol', '', 'user', 'password', 'host', 'port', 'pathname', 'query', 'hash'],
				uriParts = /^((\w+):\/\/)?((\w+):?(\w+)?@)?([^\/\?:]+):?(\d+)?(\/?[^\?#]+)?\??([^#]+)?(#?.*)/.exec(this);
			if (!uriParts)
				return uri;
			$.each(uriPartNames, function(pos, name) {
				if (name !== '')
					uri[name] = (uriParts[pos] ? uriParts[pos] : '');
			});
			var hostParts = uri['host'] ? uri['host'].split('.') : [];
			if (hostParts.length > 2)
				uri.subdomain = hostParts[0];
			// second-level domain
			uri.sld = hostParts.slice(-2).join('.');
			// top-level domain
			uri.tld = hostParts[hostParts.length - 1];

			uri.protocol = uri.protocol.toLowerCase();
			// uri.query_args = uri.query.parseQuery();
			if (part)
				return uri[part] || null;
			return uri;
		}
	});

	window.secondLevelDomain = window.location.href.parseURI()['sld'];
	detectLoggedUser();

	// Events filter
	$('.event-filter').on('click', function (event) {
		event.preventDefault();
		var filter = $(event.currentTarget).attr('data-filter');
		$('.history-item').hide();
		$('.' + filter).show();
	});

});

var tabs = {
	startListening: function () {
		$('[data-name=join_an_event] a.tab_link').on('click', this.toggleState);
		$('[data-name=login] a.tab_link').on('click', this.toggleState);
	},

	stopListening: function () {
		$('[data-name=join_an_event]').off('click', this.toggleState);
		$('[data-name=login]').off('click', this.toggleState);
	},

	toggleState: function (e) {
		e.preventDefault();
		if (e.target !== e.currentTarget)
			return;
		var $element = $(e.currentTarget).parent().find('[data-name=dropdown]'),
			visible = $element.is(':visible');
		$('[data-name=header_tabs] [data-name=dropdown]').hide();
		if (visible)
			return;
		$element.show();
		$element.find('input:first').focus();
	}
};

window.login = {
	$el: $('[data-name=login]'),
	isValid: false,

	startListening: function () {
		if (window.isLogged)
			return;

		this.$el.find('input.email').on('change', $.proxy(this.checkInput, this));
		this.$el.find('input.password').on('keyup', $.proxy(this.checkInput, this));
		this.$el.find('form').on('submit', $.proxy(this.checkSubmit, this));
	},

	checkInput: function (e) {
		this.isValid = this.$el.find('form').parsley().validate();
		this.updateStatus();
	},

	checkSubmit: function (e) {
		var $form = this.$el.find('form'),
			email = this.$el.find('[name=_username]').val(),
			password = this.$el.find('[name=_password]').val(),
			hash = CryptoJS.SHA1(email + window.app_id + window.app_secret).toString(),
			credentials =  {
				hash: hash,
				app_id: window.app_id,
				email : email,
				secret : password
			};

		this.$el.find('.credentials_info').html('');

		if (!$form.data('registered-user') && $form.parsley().validate()) {
			e.preventDefault();

			// Updates submit button state
			this.$el.find('.button-text, .button-processing').toggle();

			// Stores submitted credentials for comparison
			this.credentials = credentials;

			// Checks that credentials match an existing user
			this.xhr = this.checkUser(credentials)
				.always($.proxy(function () {
					// Switch back submit button status
					this.$el.find('.button-text, .button-processing').toggle();
				}, this))
				.fail($.proxy(function (jqXHR, textStatus, errorThrown) {
					$form.removeData('registered-user');
					this.$el.find('.credentials_info').html('Wrong credentials.');
				}, this))
				.done($.proxy(function (data) {
					var session = data.success.data;

					if (null !== session.user) {
						window.basil.set('api_session:current', {
							token: session.token,
							refresh_token: session.refresh_token,
							expires_at: session.expires_at
						}, {
							storages: ['cookie'],
							domain: window.secondLevelDomain
						});

						this.$el.find('.credentials_info').html('Redirecting...');
						window.location = window.config.appUrl;
						return;
					}

					$form.removeData('registered-user');
					this.$el.find('.credentials_info').html('Wrong credentials.');
				}, this));
			}

	},

	updateStatus: function () {
		if (true === this.$el.find('input.email').parsley().validate() && 4 > this.$el.find('input.password').val().length)
			return this.$el.find('form').attr('data-status', 'active');
		this.$el.find('form').attr('data-status', this.isValid ? 'valid' : 'not-valid');
	},

	checkUser: function (credentials) {
		return $.ajax({
			cache: false,
			headers: {
				'X-Requested-With': 'XMLHttpRequest'
			},
			contentType: 'application/json',
			url: config.apiUrl + '/api/4/authentication',
			type: 'POST',
			data: JSON.stringify(credentials)
		});
	}
};

window.subscribe = {
	$el: $('[data-name=subscribe]'),
	isValid: false,

	startListening: function () {
		this.$el.find('input.email').on('keyup', $.proxy(this.checkInput, this));
		this.$el.find('form').on('submit', $.proxy(this.checkSubmit, this));
	},

	checkInput: function (e) {
		this.isValid = this.$el.find('form').parsley().validate();
		this.updateStatus();
	},

	checkSubmit: function (e) {
		if (!this.$el.find('form').parsley().validate())
			e.preventDefault();
	},

	updateStatus: function () {
		this.$el.find('form').attr('data-status', this.isValid ? 'valid' : 'not-valid');
	}
};

var joinAnEvent = {
	$el: $('[data-name=join_an_event]'),
	keywordExists: false,

	startListening: function () {
		this.$el.find('input').on('keyup', $.proxy(this.checkKeyword, this));
		this.$el.find('form').on('submit', $.proxy(this.goTo, this));
	},

	checkKeyword: function (e) {
		if (!this.$el.find('form').parsley().validate()) {
			if (3 > this.$el.find('input').val().length)
				return this.$el.find('form').attr('data-status', 'active');
			this.keywordExists = false;
			this.updateStatus();
			return;
		}

		var keyword = $(e.currentTarget).val();
		this.getEvent(keyword)
			.success($.proxy(function () {
				this.keywordExists = true;
				this.updateStatus();
				delete this.xhr;
			}, this))
			.fail($.proxy(function (jqXHR) {
				this.keywordExists = (404 !== jqXHR.status);
				this.updateStatus();
				delete this.xhr;
			}, this));
	},

	getEvent: function (keyword) {
		if (this.xhr)
			this.xhr.abort();
		return this.xhr = $.ajax({ url: config.apiUrl + '/api/4/event/' + keyword || '', dataType: 'json' });
	},

	goTo: function (e) {
		e.preventDefault();
		if (!this.keywordExists)
			return;
		window.open(config.appUrl + '/' + this.$el.find('input').val());
	},

	updateStatus: function () {
		this.$el.find('form').attr('data-status', this.keywordExists ? 'valid' : 'not-valid');
	}
};

var quotesList = {
	$el: 		$('[data-name=quotes_list]'),
	$textarea: 	$('[data-name=quotes_list]').find('textarea'),

	start: function () {
		window.timers = [];
		this.startListening();
		this.engageAutomaticMode();
	},

	startListening: function () {
		this.$el.on(		'post:auto', 	$.proxy(this.automaticPost, 		this ));
		this.$textarea.on(	'click', 		$.proxy(this.engageManualMode, 		this ));
		this.$textarea.on(	'blur', 		$.proxy(this.engageAutomaticMode, 	this ));
		this.$textarea.on(	'keypress', 	$.proxy(this.manualPost, 			this ));
	},

	engageManualMode: function () {
		this.manualMode = true;
		delete this.message;
		this.clearTextarea();

		// Timers
		clearTimeout(window.timers.print);
		// this.manualModeCooldown('start');

	},

	engageAutomaticMode: function () {
		this.manualMode = false;
		// this.manualModeCooldown('stop');
		this.clearTextarea();
		this.print();
	},

	manualPost: function (event) {
		// Post a quote on `enter`

		if (event.which === 13) {
			event.preventDefault();
			if (this.$textarea.val() !== '') {
				// this.manualModeCooldown('restart');
				this.add();
			}
		}
	},

	// PROTO: Manual mode cooldown management | We would like to switch back to automatic mode if we don't post after 10 seconds
	manualModeCooldown: function (arg) {
		switch (arg) {
			case 'start':
				window.timers.manualMode = setTimeout($.proxy(function () {
					this.engageAutomaticMode();
				}, this), 10000);
			break;
			case 'stop':
				clearTimeout(window.timers.manualMode);
			break;
			case 'restart':
				this.manualModeCooldown('stop');
				this.manualModeCooldown('start');
			break;
		}
	},

	automaticPost: function () {
		if (this.$textarea.val() !== '') {
			setTimeout(
				$.proxy(function () {
					this.add();
					this.print();
				}, this
				), 2000
			);
		}
	},

	clearTextarea: function () {
		this.$textarea.val('');
	},

	print: function () {
		if (!this.manualMode) {
			if (!this.message || 0 === this.message.length) {
				this.message = this.$el.find('ul.list > li.auto:last .quote-text').text().split('');
			}
			window.timers.print = setTimeout($.proxy(function () {
				this.$textarea.val(this.$textarea.val() + this.message.shift());
				if (this.message.length) {
					this.print();
				} else {
					this.$el.trigger('post:auto');
				}
			}, this), Math.floor(Math.random() * 250));
		}
	},

	add: function () {
		var message 		= this.$textarea.val(),
			$lastElement 	= this.$el.find('ul.list > li.auto:last'),
			$userQuoteTpl 	= this.$el.find('ul.list > li[data-name=user-quote-tpl]'),
			$append 		= this.manualMode ? $userQuoteTpl.clone().removeAttr('data-name') : $lastElement.clone();

		$append.find('.quote-text').html(message);
		this.$el.find('ul.list').prepend($append);

		if (!this.manualMode) {
			this.$el.find('ul.list > li.auto:last').remove();
		}

		this.$textarea.val('');
	}
};

var quizDemo = {
	$form: 			$('[data-name=quiz-demo-form]'),
	$results: 		$('[data-name=quiz-demo-results]'),
	isValid: 		false,
	selectedAnswer: '',

	startListening: function () {
		this.$form.find('input[type=radio]').on(	'change', 	$.proxy(this.validateForm, 		this ));
		this.$form.find('button').on(				'click', 	$.proxy(this.displayResults, 	this ));
	},

	validateForm: function (event) {
		this.isValid = true;
		this.selectedAnswer = $(event.currentTarget).attr('id');
		this.$form.find('.button-default').addClass('button-validate');
	},

	displayResults: function () {
		if (this.isValid) {
			var $button 	= this.$form.find('button'),
				sendingText = $button.data('sending-text'),
				sentText 	= $button.data('sent-text'),
				$loader 	= this.$form.find('.frame-loading');
			$button.text(sendingText);
			$loader.removeClass('hide');
			setTimeout($.proxy(function () {
				$button.text(sentText);
				this.$form.fadeOut();
				this.$results.fadeIn();
				$loader.addClass('hide');
			}, this), 1500);
		}
	}
}

var indexCleanup = function () {
	var $button 				= $('[data-name=browser-participant] .button'),
		buttonText 				= $('[data-name=browser-participant] .button').data('reset-text')
		$slidesProgressCount 	= $('[data-name=controls-progress-count]'),
		$slidesProgressBarValue = $('[data-name=progress-bar-value]'),
		currentSlide			= parseInt($slidesProgressCount.text(), 10);


	// Cleaning poll animation

	$('[data-name=browser-participant] .mouse').show().css({
		'top' : '110%',
		'left' : '110%'
	});
	$('[data-name=browser-participant] .choice.one').css({
		'box-shadow': 'none',
		'background-color': '#eee'
	});
	$('[data-name=browser-participant] .choice.one .radio').css({
		'background-image': 'url(/static/images/ok.png)'
	});
	$button
		.css({
			'background-color': '#45a4da'
		})
		.text(buttonText);

	$('[data-name=result-1] .progress-bar').css({
		'width' : '20%'
	});
	$('[data-name=result-2] .progress-bar').css({
		'width' : '50%'
	});

	$('[data-name=result-1] .value').text('20%');
	$('[data-name=result-2] .value').text('50%');
	$('.total-count').text('12');


	// Cleaning slides animation

	$('.slides').css({'left': '0px'});
	$('[data-name=browser-organizer] .mouse').show();
	$slidesProgressCount.text('1');
	$slidesProgressBarValue.css({
		'width' : '34%'
	});

};

var indexParticipantHoverToSelect = function (selector, duration) {
	$('.mouse', selector).animate({
		top: '93px',
    	left: '17px'
	}, duration);
};

var indexParticipantSelectHover = function (selector) {
	$('.choice.one', selector).css({
		'background-color': '#f5f5f5'
	});
};

var indexParticipantSelectClick = function (selector) {
	$('.choice.one', selector).css({
		'box-shadow': 'inset 0 0 2px rgba(0, 0, 0, 0.1)'
	});
	$('.choice.one .radio').css({
		'background-image': 'url(/static/images/ok-hover.png)'
	});
}

var indexParticipantSelectClickRadio = function (selector) {
	$(selector).css({
		'background-image': 'url(/static/images/ok-hover.png)'
	});
}

var indexParticipantHoverToPublish = function (selector, duration) {
	$('.mouse', selector).animate({
		'top': '233px',
		'left': '167px'
	}, duration)
};

var indexParticipantPublishHover = function(selector) {
	$('.button', selector).css({
		'background-color': '#7fc4e2'
	});
};

var indexParticipantPublishClick = function(selector) {
	$('.button', selector).css({
		'box-shadow': 'inset 0 0 5px rgba(0, 0, 0, 0.3)',
		'background-color': '#45a4da'
	});
};

var indexParticipantSending = function(selector, duration) {
	var $el = $('.button', selector),
		sendingText = $el.data('sending-text');
	$('.frame-loading', selector).removeClass('hide');
	$el
		.css({
			'box-shadow': 'inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 2px rgba(0, 0, 0, 0.1)'
		})
		.text(sendingText)
		.animate({
			'opacity': 1
		}, duration);
};

var indexParticipantSent = function(selector, duration) {
	var $el = $('.button', selector),
		sentText = $el.data('sent-text');
	$('.frame-loading', selector).addClass('hide');
	$el.text(sentText);
};

var indexOrganizerResults = function (selector, duration) {
	$('[data-name=result-1] .progress-bar', selector).animate({
		'width' : '82%'
	}, duration);
	$('[data-name=result-2] .progress-bar', selector).animate({
		'width' : '18%'
	}, duration);

	$('[data-name=result-1] .value', selector).text('82%');
	$('[data-name=result-2] .value', selector).text('18%');
	$('.total-count', selector).text('13');

	// Fake pause
	$(selector).animate({
		'opacity': 1
	}, 3000);
};

var indexToggleSlides = function (selector, duration) {
	$('.mouse', selector).css({
		'top' : '40%',
		'left' : '110%'
	});
	$('.frame-poll', selector).fadeToggle(duration);
	$('.frame-doc', selector).fadeToggle(duration);
};

var indexSlideDoc = function (selector, duration) {
	var $progressCount 		= $('[data-name=controls-progress-count]'),
		$progressBarValue 	= $('[data-name=progress-bar-value]'),
		currentSlide		= parseInt($progressCount.text(), 10);

	$('.mouse', selector).animate({'left': '65%'}, duration);

	$('.mouse', selector).promise().done(function () {
		$('.slides').animate({'left': '-=226px'}, duration / 1.5);
		$('.mouse', selector).animate({'left': '-50%'}, duration / 1.5);
		$progressCount.text(currentSlide + 1);
		$progressBarValue.animate({
			'width' : '+=33%'
		}, duration / 2);
	})

};

var indexGoBackToPoll = function (selector, duration) {
	$('.mouse', selector).animate({
		'top' : '81%',
		'left' : '84%'
	}, duration, function () {
		$('.mouse', selector).fadeOut(100).fadeIn(100).fadeOut(100, function () {
			$('.frame-poll').fadeIn(duration);
			$('.frame-doc').fadeOut(duration);
		});
	});

}

/*
 * Simple scroll manager, use it to smoothify your anchor links
 *
 * Initially designed for features pages
 *
 * Add the `scroll` class to the link // Add a data-offset attribute to the link to use a custom offset
 *
 */

var scrollManager = {
	$el: 	$('body'),
	offset: -149,

	startListening: function () {
		this.$el.on('click', 'a.scroll', $.proxy(this.scrollToAnchor, this));
	},

	scrollToAnchor: function (event) {
		event.preventDefault();
		var $link 				= $(event.currentTarget),
			$anchor 			= $('#' + $($link).attr('href').split('#')[1]),
			linkOffset 			= $link.data('offset'),
			$elementToScroll 	= window.webkitURL 			? 	$('body') 					: $('html'),
			offset 				= linkOffset !== undefined 	? 	parseInt(linkOffset, 10) 	: this.offset;
		$elementToScroll.stop().animate({
			scrollTop: $anchor.offset().top + offset
		}, 500);
	}
};

// Should we display the `back to top` link ?
var backToTop = {
	$el: 	$(document),
	$link: 	$('#back-to-top'),

	threshold: 200,
	isHidden:  true,

	startListening : function () {
		this.$el.on('scroll', $.proxy(this.toggle, this));
	},

	show: function () {
		this.isHidden = false;
		this.$link.animate({ 'right': 0 }, 1000, 'easeOutBounce');
	},

	hide: function () {
		this.isHidden = true;
		this.$link.animate({ 'right': '-50px' }, 1000, 'easeOutBounce');
	},

	toggle: function () {
		var scrollTop = this.$el.scrollTop();
		if (scrollTop > this.threshold && this.isHidden)
			this.show();
		if (scrollTop < this.threshold && !this.isHidden)
			this.hide();
	}
};
