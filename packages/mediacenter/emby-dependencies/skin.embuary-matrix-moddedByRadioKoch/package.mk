PKG_NAME="skin.embuary-matrix-moddedByRadioKoch"
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
	# Create addon folder and copy build content to final destination...#
  	mkdir -p $INSTALL/usr/share/kodi/addons/$PKG_NAME
  	cp -a $PKG_BUILD/* $INSTALL/usr/share/kodi/addons/$PKG_NAME

	echo '##########################################################'
	echo '## ADD DEPENDENCIES'
	echo '##########################################################'
  	mkdir $PKG_BUILD/dependencies

	###############################################################################################
	## Kodi Binary Addons
	###############################################################################################

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.skinshortcuts"
	EMBY_DEPENDENCY_VERSION="1.1.2"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.skinshortcuts"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.unidecode"
	EMBY_DEPENDENCY_VERSION="1.1.1+matrix.2"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.unidecode"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.simpleeval"
	EMBY_DEPENDENCY_VERSION="0.9.10"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.simpleeval"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.requests"
	EMBY_DEPENDENCY_VERSION="2.22.0+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.requests"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.certifi"
	EMBY_DEPENDENCY_VERSION="2019.11.28+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.certifi"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.chardet"
	EMBY_DEPENDENCY_VERSION="3.0.4+matrix.3"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.chardet"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.idna"
	EMBY_DEPENDENCY_VERSION="2.8.1+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.idna"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.urllib3"
	EMBY_DEPENDENCY_VERSION="1.25.8+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.urllib3"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.arrow"
	EMBY_DEPENDENCY_VERSION="0.15.5+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.arrow"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.simplecache"
	EMBY_DEPENDENCY_VERSION="2.0.0"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.simplecache"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.routing"
	EMBY_DEPENDENCY_VERSION="0.2.3+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.routing"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.simplejson"
	EMBY_DEPENDENCY_VERSION="3.17.0+matrix.2"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.simplejson"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.autocompletion"
	EMBY_DEPENDENCY_VERSION="2.0.2"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.autocompletion"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="plugin.program.autocompletion"
	EMBY_DEPENDENCY_VERSION="2.0.0"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/plugin.program.autocompletion"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.dateutil"
	EMBY_DEPENDENCY_VERSION="2.8.1+matrix.1"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.dateutil"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.module.six"
	EMBY_DEPENDENCY_VERSION="1.14.0+matrix.2"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/script.module.six"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	####################################### Resources      ########################################
	###############################################################################################
	EMBY_DEPENDENCY_NAME="resource.language.de_de"
	EMBY_DEPENDENCY_VERSION="9.0.24"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/resource.language.de_de"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="resource.language.fr_fr"
	EMBY_DEPENDENCY_VERSION="9.0.27"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/resource.language.fr_fr"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="resource.language.es_es"
	EMBY_DEPENDENCY_VERSION="9.0.26"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/resource.language.es_es"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="resource.language.ar_sa"
	EMBY_DEPENDENCY_VERSION="9.0.8"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/resource.language.ar_sa"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="resource.language.ru_ru"
	EMBY_DEPENDENCY_VERSION="9.0.20"
	EMBY_DEPENDENCY_GIT="http://mirrors.kodi.tv/addons/matrix/resource.language.ru_ru"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION.zip -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	unzip -q $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip -d $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.zip
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	## Embuary Addons
	###############################################################################################

	###############################################################################################
	EMBY_DEPENDENCY_NAME="plugin.video.embycon"
	EMBY_DEPENDENCY_VERSION="0.0.2"
	EMBY_DEPENDENCY_GIT="https://github.com/Melf11/plugin.video.embycon"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/archive/$EMBY_DEPENDENCY_VERSION.tar.gz -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	tar -xf $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz -C $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.embuary.helper"
	EMBY_DEPENDENCY_VERSION="2.0.6"
	EMBY_DEPENDENCY_GIT="https://github.com/sualfred/script.embuary.helper"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/archive/$EMBY_DEPENDENCY_VERSION.tar.gz -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	tar -xf $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz -C $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="script.embuary.info"
	EMBY_DEPENDENCY_VERSION="2.0.2"
	EMBY_DEPENDENCY_GIT="https://github.com/sualfred/script.embuary.info"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/archive/$EMBY_DEPENDENCY_VERSION.tar.gz -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	tar -xf $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz -C $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	EMBY_DEPENDENCY_NAME="resource.uisounds.embuary"
	EMBY_DEPENDENCY_VERSION="master"
	EMBY_DEPENDENCY_GIT="https://github.com/sualfred/resource.uisounds.embuary"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/archive/$EMBY_DEPENDENCY_VERSION.tar.gz -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
	mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	tar -xf $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz -C $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
  	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/* $INSTALL/usr/share/kodi/addons/$EMBY_DEPENDENCY_NAME

	###############################################################################################
	## Add Boatsman Config
	###############################################################################################
	EMBY_DEPENDENCY_NAME="boatsman-config"
	EMBY_DEPENDENCY_VERSION="faaf65c7bbf9013fb8d4b47dceb89bd1cff380e2"
	EMBY_DEPENDENCY_GIT="https://github.com/Melf11/boatsman-config"
	EMBY_DEPENDENCY_FILENAME=$EMBY_DEPENDENCY_NAME-$EMBY_DEPENDENCY_VERSION

  	wget $EMBY_DEPENDENCY_GIT/archive/$EMBY_DEPENDENCY_VERSION.tar.gz -O $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz
	  mkdir $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	tar -xf $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz -C $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME
  	rm $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_FILENAME.tar.gz

	cp -a $PKG_BUILD/dependencies/$EMBY_DEPENDENCY_NAME/$EMBY_DEPENDENCY_FILENAME/kodi/* $INSTALL/usr/share/kodi



	echo '##############################################################'
	echo '## List installed addons'
	echo '##############################################################'
	ls -l $INSTALL/usr/share/kodi/addons
	echo '#################################### -+ END +- ####################################'
}

post_install() {

	mkdir -p $INSTALL/usr/lib/systemd/system
	cp $PKG_DIR/scripts/copy-emby-dependencies $INSTALL/usr/bin

	## Enable Kodi Copy Service for Boot
	###############################################################################################
	enable_service copy-emby-dependencies.service

	## Enabling Addons from first boot
	###############################################################################################
	ADDON_MANIFEST=$INSTALL/usr/share/kodi/system/addon-manifest.xml

	## Languages
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "resource.language.de_de" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "resource.language.fr_fr" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "resource.language.es_es" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "resource.language.ar_sa" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "resource.language.ru_ru" $ADDON_MANIFEST

	## Embuary Theme
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "skin.embuary-matrix-moddedByRadioKoch" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.embuary.helper" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.embuary.info" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "resource.uisounds.embuary" $ADDON_MANIFEST

	## EmbyCon Plugin
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "plugin.video.embycon" $ADDON_MANIFEST

	## Embuary Theme Dependencies
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.autocompletion" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "plugin.program.autocompletion" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.arrow" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.unidecode" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.simpleeval" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.requests" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.certifi" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.chardet" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.idna" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.urllib3" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.simplecache" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.routing" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.simplejson" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.dateutil" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.module.six" $ADDON_MANIFEST
	xmlstarlet ed -L --subnode "/addons" -t elem -n "addon" -v "script.skinshortcuts" $ADDON_MANIFEST


}