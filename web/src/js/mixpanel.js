$(document).ready(function () {

mixpanel.people.set( persistCampaign );

if ($(document.body).hasClass('frontpage')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'home' });
}

if ($(document.body).hasClass('plans')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'plans' });
}

if ($(document.body).hasClass('meetings-confcalls')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'wiz_feature', product: 'confcall' });
}

if ($(document.body).hasClass('events-seminaries')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'wiz_feature', product: 'event' });
}

if ($(document.body).hasClass('classes-trainings')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'wiz_feature', product: 'training' });
}

if ($(document.body).hasClass('case-studies')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'case_studies' });
}

if ($(document.body).hasClass('contact')) {
  mixpanel.track( 'corpo:page', { app: 'corpo', page: 'contact' });
}


// clicks on create wiz button
mixpanel.track_links('#plan-create-meeting', 'corpo:wiz:create', { app: 'corpo', context: 'freemium', product: 'confcall' });
mixpanel.track_links('#plan-create-training', 'corpo:wiz:create', { app: 'corpo', context: 'freemium', product: 'training' });
mixpanel.track_links('#plan-create-event', 'corpo:wiz:create', { app: 'corpo', context: 'freemium', product: 'event' });


var persistCampaign = {
    adwordsCampaign: getAdwordsCampaign()
  , entryPage: window.location.pathname
};

// persist once entryPage and adwordcampaign
mixpanel.register_once( persistCampaign );

// @guillaumepotier indexOf implementation for IE<=8 support
String.prototype.indexOf = function ( str ) {
    var index = -1;

    for ( var i = 0; i < this.length; i++ ) {
        if ( this[i] === str[0] ) {
            index = i;

            for ( var j = 1; j < str.length; j++ ) {
                if ( this[i+j] !== str[j] ) {
                    i += j;
                    break;
                }
            }

            if ( i === index ) {
                return index;
            }
        }
    }

    return -1;
};

function getAdwordsCampaign() {
  return null !== getCookie( '__utmz' ) && -1 !== getCookie( '__utmz' ).indexOf( 'gclid' );
}

function getCookie( c_name ) {
  var i, x, y, ARRcookies = document.cookie.split( ';' );

  for ( i = 0; i < ARRcookies.length; i++ ) {
    x = ARRcookies[ i ].substr( 0, ARRcookies[ i ].indexOf( '=' ) );
    y = ARRcookies[ i ].substr( ARRcookies[ i ].indexOf( '=' ) + 1 );
    x = x.replace( /^\s+|\s+$/g, '' );

    if ( x == c_name ) {
      return unescape( y );
    }
  }
}
});
