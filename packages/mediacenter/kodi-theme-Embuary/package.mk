PKG_NAME="kodi-theme-Embuary"
PKG_VERSION="0.0.1"
PKG_SHA256="48e1a558955d8878d06910e353eee8353e62b0ccddee5f97401f84466d708429"
PKG_LICENSE="CC by-nc-nd 4.0"
PKG_SITE="https://github.com/Melf11/skin.embuary"
PKG_URL="https://github.com/Melf11/skin.embuary/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="kodi"
PKG_SHORTDESC="Embuary Skin for Kodi"
PKG_LONGDESC="Kodi Mediacenter Embuary theme by sualfred modded by Radio Koch Marine GmbH."
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p $INSTALL/usr/share/kodi/addons/
    cp -a $(get_install_dir kodi)/.noinstall/skin.embuary $INSTALL/usr/share/kodi/addons/
}


# shasum -a 256