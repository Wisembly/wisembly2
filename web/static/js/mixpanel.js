$(document).ready(function () {
// page plans visit
if ($('body.plans').length) {
  mixpanel.track( 'corpo_visit_plans' );
  mixpanel.people.set( persistCampaign );
}

// clicks on create wiz button
mixpanel.track_links('#plan-create-meeting', 'corpo_create_wiz_freemium_meeting');
mixpanel.track_links('#plan-create-training', 'corpo_create_wiz_freemium_training');
mixpanel.track_links('#plan-create-event', 'corpo_create_wiz_freemium_event');

// clicks on home page view product features
mixpanel.track_links('#hp-feature-meeting', 'corpo_homepage_feature_meeting');
mixpanel.track_links('#hp-feature-training', 'corpo_homepage_feature_training');
mixpanel.track_links('#hp-feature-event', 'corpo_homepage_feature_event');

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
}

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