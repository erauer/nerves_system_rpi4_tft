################################################################################
#
# flutter_pi
#
################################################################################

FLUTTER_PI_VERSION = 6ecae4abbde6a422781883030a0553c7efde6195 

FLUTTER_PI_LICENSE = MIT

FLUTTER_PI_SITE = ssh://git@github.com/erauer/flutter-pi
FLUTTER_PI_SITE_METHOD = git

FLUTTER_PI_CONF_OPTS = -DBUILD_GSTREAMER_VIDEO_PLAYER_PLUGIN=OFF -DBUILD_OMXPLAYER_VIDEO_PLAYER_PLUGIN=OFF 

$(eval $(cmake-package))

