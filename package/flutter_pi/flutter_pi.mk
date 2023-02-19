################################################################################
#
# flutter_pi
#
################################################################################

FLUTTER_PI_VERSION = 757029e614f8845f64e5c82617b3eb71ef8e4e8b

FLUTTER_PI_LICENSE = MIT

FLUTTER_PI_SITE = ssh://git@github.com/erauer/flutter-pi
FLUTTER_PI_SITE_METHOD = git

FLUTTER_PI_CONF_OPTS = -DBUILD_GSTREAMER_VIDEO_PLAYER_PLUGIN=OFF -DBUILD_OMXPLAYER_VIDEO_PLAYER_PLUGIN=OFF 

$(eval $(cmake-package))

