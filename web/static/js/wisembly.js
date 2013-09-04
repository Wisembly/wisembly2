$(document).ready(function () {
	window.config = {
		baseUrl: 'https://app.wisembly.com'
	};
	tabs.startListening();
	joinAnEvent.startListening();
	login.startListening();
	quotesList.start();
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