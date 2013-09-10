$(document).ready(function () {
	window.config = {
		baseUrl: 'https://app.wisembly.com'
	};
	tabs.startListening();
	joinAnEvent.startListening();
	login.startListening();
	quotesList.start();
	quizDemo.startListening();
	var browsersAnimation = new Animator();
	browsersAnimation.init({
		loops: 20,
		stepDelay: 100,
		loopDelay: 10000,
		steps: [
			{
				name: 'step-1',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn : 	'indexOrganizerHoverToSelect',
						duration: 		2000
					}
				]
			}, {
				name: 'step-2',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerSelectHover',
						duration: 		0
					}
				]
			}, {
				name: 'step-3',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerSelectClick',
						duration: 		0
					}
				]
			}, {
				name: 'step-4',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerHoverToPublish',
						duration: 		1000
					}
				]
			}, {
				name: 'step-5',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerPublishHover',
						duration: 		0
					}
				]
			}, {
				name: 'step-6',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerPublishClick',
						duration: 		0
					}
				]
			}, {
				name: 'step-7',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerSending',
						duration: 		1500
					}
				]
			}, {
				name: 'step-8',
				animations: [
					{
						selector: 		'[data-name=browser-organizer]',
						animationFn: 	'indexOrganizerSent',
						duration: 		0
					}, {
						selector: 		'[data-name=browser-participant]',
						animationFn: 	'indexParticipantResults',
						duration: 		500
					}
				]
			}
		],
		cleanup: 'indexCleanup'
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
		if (this.isLogged())
			return;

		this.$el.find('input.email').on('change', $.proxy(this.checkInput, this));
		this.$el.find('input.password').on('keyup', $.proxy(this.checkInput, this));
		this.$el.find('form').on('submit', $.proxy(this.checkSubmit, this));
	},

	checkInput: function (e) {
		this.isValid = this.$el.find('form').parsley('validate');
		this.updateStatus();
	},

	checkSubmit: function (e) {
		if (!this.$el.find('form').parsley('validate'))
			e.preventDefault();
	},

	updateStatus: function () {
		if (true === this.$el.find('input.email').parsley('validate') && 4 > this.$el.find('input.password').val().length)
			return this.$el.find('form').attr('data-status', 'active');
		this.$el.find('form').attr('data-status', this.isValid ? 'valid' : 'not-valid');
	},

	isLogged: function () {
		return -1 !== document.cookie.indexOf('wisembly_remember_me');
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
		if (!this.$el.find('form').parsley('validate')) {
			if (3 > this.$el.find('input').val().length)
				return this.$el.find('form').attr('data-status', 'active');
			this.keywordExists = false;
			this.updateStatus();
			return;
		}

		var keyword = $(e.currentTarget).val();
		this.getEvent(keyword)
			.success(function () {
				this.keywordExists = true;
				this.updateStatus();
				delete this.xhr;
			}.bind(this))
			.fail(function () {
				this.keywordExists = false;
				this.updateStatus();
				delete this.xhr;
			}.bind(this));
	},

	getEvent: function (keyword) {
		if (this.xhr)
			this.xhr.abort();
		return this.xhr = $.ajax({ url: config.baseUrl + '/api/3/event/' + keyword || '' });
	},

	goTo: function (e) {
		e.preventDefault();
		if (!this.keywordExists)
			return;
		window.open(config.baseUrl + '/' + this.$el.find('input').val());
	},

	updateStatus: function () {
		this.$el.find('form').attr('data-status', this.keywordExists ? 'valid' : 'not-valid');
	}
};

var quotesList = {
	$el: $('[data-name=quotes_list]'),

	start: function () {
		this.$el.on('ended_typing', function () {
			setTimeout(function () {
				this.add();
				this.print();
			}.bind(this), 2000);
		}.bind(this));
		this.print();
	},

	stop: function () {

	},

	print: function () {
		if (!this.message || 0 === this.message.length)
			this.message = this.$el.find('ul.list > li:last .quote-text').text().split('');
		setTimeout(function () {
			this.$el.find('textarea').text(this.$el.find('textarea').text() + this.message.shift());
			if (this.message.length)
				this.print();
			else this.$el.trigger('ended_typing');
		}.bind(this), Math.floor(Math.random() * 250));
	},

	add: function () {
		var message = this.$el.find('textarea').text(),
			$lastElement = this.$el.find('ul.list > li:last'),
			$append = $lastElement.clone();
		$append.find('.quote-text').html(message);
		this.$el.find('ul.list').prepend($append);
		this.$el.find('ul.list > li:last').remove();
		this.$el.find('textarea').html('');
	},

	remove: function () {

	}
};

var quizDemo = {
	$form: 			$('[data-name=quiz-demo-form]'),
	$results: 		$('[data-name=quiz-demo-results]'),
	isValid: 		false,
	selectedAnswer: '',

	startListening: function () {
		this.$form.find('input[type=radio]').on('change', $.proxy(this.validateForm, 		this	));
		this.$form.find('button').on('click', 	$.proxy(this.displayResults, 	this	));
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
				sentText 	= $button.data('sent-text');
			$button.text(sendingText);
			setTimeout(function () {
				$button.text(sentText);
				this.$form.fadeOut();
				this.$results.fadeIn();
			}.bind(this), 1500);
		}
	}
}

var indexCleanup = function () {
	var $button = $('[data-name=browser-organizer] .button'),
		buttonText = $('[data-name=browser-organizer] .button').data('reset-text');

	$('[data-name=browser-organizer] .mouse').css({
		'top' : '110%',
		'bottom' : '110%'
	});
	$('[data-name=browser-organizer] .choice.one').css({
		'box-shadow': 'none',
		'background-color': '#eee'
	});
	$('[data-name=browser-organizer] .choice.one .radio').css({
		'background-image': 'url(/static/images/ok.png)'
	});
	$button
		.css({
			'background-color': '#45a4da'
		})
		.text(buttonText);

	$('[data-name=result-1] .progress-bar').css({
		'width' : '80%'
	});
	$('[data-name=result-2] .progress-bar').css({
		'width' : '20%'
	});

	$('[data-name=result-1] .value').text('80%');
	$('[data-name=result-2] .value').text('20%');
	$('.total-count').text('12');
};

var indexOrganizerHoverToSelect = function (selector, duration) {
	$('.mouse', selector).animate({
		top: '93px',
    	left: '17px'
	}, duration);
};

var indexOrganizerSelectHover = function (selector) {
	$('.choice.one', selector).css({
		'background-color': '#f5f5f5'
	});
};

var indexOrganizerSelectClick = function (selector) {
	$('.choice.one', selector).css({
		'box-shadow': 'inset 0 0 2px rgba(0, 0, 0, 0.1)'
	});
	$('.choice.one .radio').css({
		'background-image': 'url(/static/images/ok-hover.png)'
	});
}

var indexOrganizerSelectClickRadio = function (selector) {
	$(selector).css({
		'background-image': 'url(/static/images/ok-hover.png)'
	});
}

var indexOrganizerHoverToPublish = function (selector, duration) {
	$('.mouse', selector).animate({
		'top': '233px',
		'left': '167px'
	}, duration)
};

var indexOrganizerPublishHover = function(selector) {
	$('.button', selector).css({
		'background-color': '#7fc4e2'
	});
};

var indexOrganizerPublishClick = function(selector) {
	$('.button', selector).css({
		'box-shadow': 'inset 0 0 5px rgba(0, 0, 0, 0.3)',
		'background-color': '#45a4da'
	});
};

var indexOrganizerSending = function(selector, duration) {
	var $el = $('.button', selector),
		sendingText = $el.data('sending-text');
	$el
		.css({
			'box-shadow': 'inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 2px rgba(0, 0, 0, 0.1)'
		})
		.text(sendingText)
		.animate({
			'opacity': 1
		}, duration);
};

var indexOrganizerSent = function(selector, duration) {
	var $el = $('.button', selector),
		sentText = $el.data('sent-text');
	$el.text(sentText);
};

var indexParticipantResults = function (selector, duration) {
	$('[data-name=result-1] .progress-bar', selector).animate({
		'width' : '82%'
	}, duration);
	$('[data-name=result-2] .progress-bar', selector).animate({
		'width' : '18%'
	}, duration);

	$('[data-name=result-1] .value', selector).text('82%');
	$('[data-name=result-2] .value', selector).text('18%');
	$('.total-count', selector).text('13');
};


/**
 * Small animator helper, meant to play on or more animation sequences at the same time
 * A sequence is composed of steps, and can be played several times
 * Each step can manage animations functions on one or more selectors
 **/

var Animator = (function () {

	var currentStep 	= 0,
		currentLoop 	= 1,
		currentState 	= 'stopped',
		options,
		defaults = {
			autoplay: 	true,			// Play animation sequence just after init ?
			loops: 		5,				// How many times should be played the animation sequence
			loopDelay: 	500,			// How much time should be taken between each loop
			stepDelay: 	500,			// How much time should be taken between each steps
			steps: 		[]				// Steps : { name | animations : { selector, animationFn, duration } }
		};

	var init = function (args) {
		options = $.extend(defaults, args);
		if (options.autoplay) {
			loop();
		}
	};

	var loop = function () {
		currentStep = 0;
		if (options.cleanup) {
			window[options.cleanup].call();
		}
		if (currentLoop <= options.loops) {
			play();
		} else {
			stop();
		}
	};

	var play = function () {
		currentState = 'playing';
		$.each(options.steps[currentStep].animations, function (index, animation) {
			window[animation.animationFn].call(this, animation.selector, animation.duration || 500);
		});
		// Waiting for ALL animations in this step to be finished before continuing
		$(':animated').promise().done( function () {
			currentStep += 1;
			if (currentStep < options.steps.length) {
				setTimeout(play, options.stepDelay);
			} else {
				currentLoop += 1;
				setTimeout(loop, options.loopDelay);
			}
		});

	};

	var stop = function () {
		currentState = 'stopped';
		currentStep = 0;
		currentLoop = 1;
		if (options.cleanup) {
			window[options.cleanup].call();
		}
	};

	return {
		init: init
	};

});



