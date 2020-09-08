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
	# Create addon folder and copy build content to final destination...#
  	mkdir -p $INSTALL/usr/share/kodi/addons/$PKG_NAME
  	cp -a $PKG_BUILD/* $INSTALL/usr/share/kodi/addons/$PKG_NAME

	echo '##########################################################'
	echo '#################### ADD DEPENDENCIES ####################'
	echo '##########################################################'
  	mkdir $PKG_BUILD/dependencies

	###############################################################################################
	##################################### Kodi Binary Addons ######################################
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

	###############################################################################################
	####################################### Embuary Addons ########################################
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



	echo '#################################### List installed addons  ####################################'
	ls -l $INSTALL/usr/share/kodi/addons
	echo '#################################### -+ END +- ####################################'
}


#Included
#<import addon="xbmc.python" version="3.0.0"/>
#<import addon="xbmc.gui" version="5.14.0"/>
#<import addon="script.embuary.helper" version="1.3.6"/>
#<import addon="script.embuary.info" version="1.2.4"/>
#<import addon="script.skinshortcuts" version="1.0.17"/>
#<import addon="resource.uisounds.embuary" version="0.0.4"/>
#<import addon="plugin.program.autocompletion" version="1.0.1"/>
#<import addon="script.module.unidecode" version="0.4.14"/>
#<import addon="script.module.simpleeval" version="0.9.10"/>
#<import addon="script.module.requests" version="2.9.1"/>
#<import addon="script.module.certifi" version="2019.11.28+matrix.1"/>
#<import addon="script.module.chardet" version="3.0.4+matrix.1"/>
#<import addon="script.module.idna" version="2.8.1+matrix.1"/>
#<import addon="script.module.urllib3" version="1.25.8+matrix.1"/>
#<import addon="script.module.arrow" version="0.10.0"/>
#<import addon="script.module.simplecache" version="1.0.17" />
#<import addon="script.module.routing" version="0.2.0"/>
#<import addon="script.module.simplejson" version="3.3.0"/>

#Not Included
#<import addon="script.module.pil" version="1.1.7"/>
