PKG_NAME="plugin.video.embycon"
PKG_VERSION="0.0.2"
PKG_LICENSE="GPL-2.0"
PKG_SHA256="6bcaccbff0ee21f9212672f32029de676016f698124e1c228083c074b6c96e30"
PKG_SITE="https://github.com/Melf11/plugin.video.embycon"
PKG_URL="https://github.com/Melf11/plugin.video.embycon/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="kodi"
PKG_SHORTDESC="EmbyCon - Emby Media Server Connection"
PKG_LONGDESC="EmbyCon is a lightweight [Kodi] addon that lets you browse and play media files from your [Emby] server directly within the Kodi interface."
PKG_TOOLCHAIN="manual"

makeinstall_target() {
	# Create addon folder and copy build content to final destination...#
  	mkdir -p $INSTALL/usr/share/kodi/addons/$PKG_NAME
  	cp -a $PKG_BUILD/* $INSTALL/usr/share/kodi/addons/$PKG_NAME
}