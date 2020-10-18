#.bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

# ================== Python 3.6 ======================
export PYTHON_HOME=${APP_HOME}/src/Python/python
export PATH=${PYTHON_HOME}/bin:$PATH

# User specific aliases and functions
# ======================================================
# For Marvell Bootloader Compile...
# ======================================================
#export CROSS_COMPILE=arm-none-linux-gnueabi-
#export CROSS_COMPILE_BH=arm-none-linux-gnueabi-

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
export  PS1='[`whoami`:${PWD}] '
export  LANG=C
#
# Set the SVN Environment
#
#export SVN_EDITOR=/usr/bin/vim
export SVN_EDITOR="python $HOME/eyedi-templete/templete-with-svn.py $HOME/eyedi-templete/commit-template svn-commit.tmp && vim svn-commit.tmp"

# Set ZEBOS PLATFORM
#
export IPI_ZEBOS_PLATFORM=linux

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

# ======================================================
# E6300 - USER HOME ENV
# ======================================================
LC_ALL=C;

export EDITOR="vim"
#SUPPORTED="ko_KR.eucKR:ko_KR:ko"
#export LANG=ko_KR.eucKR
#export LC_ALL=ko_KR.eucKR

export LANG=C
export LC_ALL=ko_KR.eucKR
export ARCH=arm
export CROSS_COMPILE=arm-linux-
#export CROSS_COMPILE_BH=arm-linux-
# Set NEW L2/L3 Marvell CROSS_COMPILE 
#
#CROSS_COMPILE=arm-linux-
#ARCH=arm
#export ARCH
#export CROSS_COMPILE

#export CC=/usr/bin/clang
#export CXX=/usr/bin/clang++

#PATH=/usr/lib/perl5:$PATH

#
# Set NEW L2/L3 Switch Cross-Compile PATH
#
PATH=$PATH:/opt/arm_gnu_linux/bin/
PATH=/bin:/usr/bin:/sbin/usr/sbin:$PATH
#PATH=$PATH:/project/newosd/xCat3/Marvell_toolchain_201201/armv7-marvell-linux-gnueabi-softfp_i686/bin
# For uSafe4010 Compile.
PATH=$PATH:/opt/mvista_5.0_armv5t/montavista/pro/devkit/arm/v5t_le/bin
PATH=$PATH:/opt/mvista_5.0_armv5t/montavista/pro/devkit/arm/v5t_le_uclibc/bin
export PATH=$PATH

#SDK=/project/eyedi/E5924K/sdk-all-6.5.13
#export SDK=$SDK

# Alias
alias   kor='export LANG=ko_KR.eucKR'
alias   eng='export LANG=C'

alias   so='source ~/.bashrc'
alias   ls='ls -F --color=auto'
alias	ll='ls -ailtrh'
alias   cp='cp -i'
alias   rm='rm -i'
alias   mv='mv -i'
alias   dir='ls -lF'
alias   ..='cd ..'
alias   ...='cd ../..'
alias   ....='cd ../../..'
alias   .....='cd ../../../..'
alias   ......='cd ../../../../..'
alias   .......='cd ../../../../../..'

alias	cta='ctags -R'
alias	pinstall='vim +PluginInstall +qall'

alias   nagrep='find . \( -name "*.[hcCSs]" -o -name "Makefile" -o -name "Kconfig" -o -name "*.sh" \) |xargs grep --color -n $1'
alias   hgrep='find . -name "*.h" | xargs grep --color  -n $1'
alias   cgrep='find . -name "*.[cC]" |xargs grep --color -n $1'
alias   chgrep='find . -name "*.[hcC]" |xargs grep --color -n $1'
alias   shgrep='find . -name "*.[shH]" | xargs grep --color -n $1'
# cgrpe also.. by suchduck.
alias   grpe='grep --color'
alias	grep='grep --color'
alias   kgrpe='find . -name "Kconfig" |xargs grep --color -n $1'
alias   cgrpe='find . -name "*.[cC]" |xargs grep --color -n $1'
alias   agrep='find . -name "*" |xargs grep --color --exclude-dir=dir -n $1'
alias   Sgrep='find . -name "*.S" |xargs grep --color -n $1'
alias   sgrep='find . -name "*.s" |xargs grep --color -n $1'
alias   ogrep='find . -name "*.o" | sed -e "s/o$/c/" | xargs grep -s --color -n $1'
alias   mgrep='find . \( -name "Makefile" -o -name "*.mk" \)  |xargs grep  -n $1'
alias   kgrep='find . -name Kconfig |xargs grep --color -n $1'
alias   psgrep='ps -ef | grep $1'

alias   where='find ./ -name "*" |xargs grep --color -n $1'
alias   wherc='find ./ -name "*.[cC]" |xargs grep --color -n $1'
alias   wherh='find ./ -name "*.[hH]" |xargs grep --color -n $1'
alias   whers='find ./ -name "*.[sS]" |xargs grep --color -n $1'
alias   wherm='find ./ -name "Makefile" |xargs grep --color -n $1'
alias   findn='find ./ -name $1'

alias   rmo='find . -name "*.o" | xargs /bin/rm -f $1 ; find . -name "*.gdb" | xargs /bin/rm -f $1 ; find . -name ".*.flags" | xargs /bin/rm -f $1 ; find . -name ".depend" | xargs /bin/rm -f $1'
alias   rmcmd='find . -name ".*.cmd" | xargs rm -f $1'
alias   rmswp='/usr/bin/find . -name ".*.swp" | xargs rm -f'

# suchduck 
TTYPORT=`tty`
TTYNAME=`echo $TTYPORT | cut -c6-`
#REMOTEHOST=`who|grep "$TTYNAME"|awk '{print $6}'|sed 's/(//'|sed 's/)//'`
REMOTEHOST=`who|grep -w "$TTYNAME"|awk '{print $5}'|sed 's/(//'|sed 's/)//'`
export DISPLAY="${REMOTEHOST}:0"

#alias   m='make |& ~/colorize'
alias   all='make all |& ~/colorize'
#alias   1time='make 1time_lgu |& ~/colorize'
#alias   again='make again_lgu |& ~/colorize'
alias   sdkfsi='make sdkfsi |& ~/colorize'
alias   hslfsi='make hslfsi |& ~/colorize'
#
# SVN Checkout.
#
alias   checkout_E5924K='svn checkout http://10.1.0.1/E5924/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_U4200='svn checkout http://10.1.0.1/U4200/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_UBIENT='svn checkout http://10.1.0.1/UBIENT/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'

alias   checkout_U4X08B='svn checkout http://10.1.0.1/U4308B/svn/trunk_new/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_U4124B='svn checkout http://10.1.0.1/u4100/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_U4224B_BORTS='svn checkout http://10.1.0.1/U4200/svn/branches/u4200_os/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_E5808L='svn checkout http://10.1.0.1/E5800/svn/branches/E5808L_Trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_uSafe='svn checkout http://10.1.0.1/uSafe3010/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_iES='svn checkout http://10.1.0.1/IES4052/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_UBIENT_Bootloader='svn checkout http://10.1.0.1/IES4052/svn/bootloader/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_UBIENT_3128G='svn checkout http://10.1.0.1/UBIENT/svn/branches/ES-3128G/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_UBIENT_HTTP='svn checkout http://10.1.0.1/UBIENT/svn/UBIENT_ELG/trunk $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_E6300='svn checkout http://10.1.0.1/E6300/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_U9016='svn checkout http://10.1.0.1/U9016/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_E7500='svn checkout http://10.1.0.1/E7500v3/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_E3002='svn checkout http://10.1.0.1/e3002/svn/trunk $1 --username eyedi --password eyedi --no-auth-cache'
alias	checkout_E6100='svn checkout http://10.1.0.1/E6100/svn/trunk $1 --username e6100 --password e6100 --no-auth-cache'
alias	checkout_E7100='svn checkout http://10.1.0.1/5G-BH/svn/trunk/ $1 --username sangjin --password sangjin --no-auth-cache'

# use 'svn_setting.sh' instead of below method.
alias   checkout_uSafe4010='svn checkout http://10.1.0.1/uSafeV1.0/svn/branches/uSafe4010_ENT/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_iES4028='svn checkout http://10.1.0.1/uSafeV1.0/svn/branches/iES4028/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_CS3400='svn checkout http://10.1.0.1/CS3400/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'
alias   checkout_mvl2='svn checkout http://10.1.0.1/MVL2/svn/trunk/ $1 --username eyedi --password eyedi --no-auth-cache'

alias   checkout_uSafe_Bootloader='svn checkout http://10.1.0.1/uSafe3010/svn/bootloader/ $1 --username newosd --password newosd --no-auth-cache'
alias   checkout_iES_Bootloader='svn checkout http://10.1.0.1/IES4052/svn/bootloader/ $1 --username newosd --password newosd --no-auth-cache'
alias	checkout_iES4028_Bootloader='svn checkout http://10.1.0.1/uSafeV1.0/svn/u-boot-uSafe4010/ $1 --username newosd --password newosd --no-auth-cache'
alias	checkout_E5224_Bootloader='svn checkout http://10.1.0.1/MVL2/svn/u-boot-E5224/ $1 --username newosd --password newosd --no-auth-cache'
alias	checkout_E3224_Bootloader='svn checkout http://10.1.0.1/MVL2/svn/u-boot-E3224/ $1 --username newosd --password newosd --no-auth-cache'

# 
# Make Cmd.
#
alias	make_zos='cd ./src/zos/ && make all && make release && cd ../../ && make comp_clean && make ramfsi'
alias	make_zos_cli='cd ./src/zos/platform/linux && make clean-imi && make clean-imish && cd ../../ && make all && make release && cd ../../ && make comp_clean && make ramfsi'
alias	make_zifm='cd ./src/zapp/zifm && make all && make release && cd ../../../ && make comp_clean && make ramfsi'
alias	make_nsm_cli='cd src/zos/nsm && make clean && cd ../imi && make clean && cd ../imish && make clean && cd .. && make all && make release && cd ../.. && make ramfsi'
alias	make_nsm='cd src/zos/nsm && make clean && cd .. && make all && make release && cd ../.. && make ramfsi'
alias	make_scpd='cd ./src/zapp/scpd && make all && make release && cd ../../../ && make comp_clean && make ramfsi'
alias	make_zcmds='cd ./src/zapp/zcmds && make all && make release && cd ../../../ && make comp_clean && make ramfsi'
alias	make_zsysm='cd ./src/zapp/zsysm && make all && make release && cd ../../../ && make comp_clean && make ramfsi'
alias	make_legacy='cd ./src/legacy/ && make clean && make all && make release && cd ../../ && make comp_clean && make ramfsi'
alias	make_syslog='cd ./src/legacy/syslog-ng/syslog-ng-3.0.5 && make all && make release && cd ../../../../ && make comp_clean && make ramfsi'
alias	make_zapp='cd ./src/zapp/ && make clean && make all && make release && cd ../../ && make comp_clean && make ramfsi'
alias	make_dhcp='cd ./src/legacy/dhcpr/ && make clean && make all && make release && cd ../../../ && make comp_clean && make ramfsi'
alias	make_lib='cd ./src/lib/libll && make all && make release && cd ../../../ && make comp_clean && make again'
alias   make_cli='cd src/zos/platform/linux/; make clean-imi; make clean-imish; make imi; make imish; make release; cd ../../../../; make ramfsi'
#
# Make Tags.
#
alias	make_tags='cd ./kernel/linux-3.4.69/ && ctags -R ./ && cd - && cd ./workspace/src/zos/ &&  ctags -R ./ && cd - && cd ./workspace/src/zapp && ctags -R ./ &&  cd - && cd ./workspace && ctags -R ./ && echo "TAGS CREATE COMPLETE."'
alias	svn_update='svn update --no-auth-cache --username newosd --password newosd'
alias	update_tags_1time='svn_update && make_tags && make 1time'
alias	update_1time='svn_update && make_tags && ./configure/configure.sh UbiEnt && make comp_clean && make 0time'
alias	update_1time_iES4052='svn_update && make_tags && ./configure/configure.sh iES4052 && make comp_clean && make 0time'
alias	checkout_0time_UBIENT='checkout_UBIENT ./$1 && cd ./$1/workspace/ && ./configure/configure.sh UbiEnt && make 0time && cd ../ && make_tags'

make()
{
	/usr/bin/python /tmp/NEWOSD/make_complete.py make $@
}

# for E5924K/L Bootloader
ubi_make()
{
	/usr/bin/python /tmp/NEWOSD/make_complete.py $@
}

# fzf finder setting
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

fzfv()
{
	fzf --preview '[[ $(file --mime {}) =~ binary ]] &&
		echo {} is a binary file ||
		(cat {}) 2> /dev/null | head -500'
}

#
#
#
echo
echo "Now, we use Development Server for U4308B / U4208B / U4224B / uSafe3010 / uSafe5010 / E3010 / E5010 / iES4052  product in 10.1.0.30"
echo "workspaces for eyedi"
echo
