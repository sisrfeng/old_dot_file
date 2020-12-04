set -x
cat git_url.txt>>/etc/hosts
##### Ubuntu uses network-manager instead of the traditional Linux networking model. so you should restart the network-manager service instead of the network service
# /etc/rc.d/init.d/network restart
service network-manager restart

ln -s ~/dot_file/.condarc ~/
ln -s ~/dot_file/.wf_alias ~/

shopt -s  expand_aliases 
alias ai='apt install -y -qq'
alias pip3='pip3 -qq'
ai install nscd 
/etc/init.d/nscd restart


# mkdir ~/.pip ; cat>~/.pip/pip.conf<<EOF
# [global]
# index-url = https::
# EOF

yes | unminimize
yes | (ln -s /opt/data/private/anaconda3 ~/)
yes | (add-apt-repository ppa:ultradvorka/ppa && apt-get -qq update && apt-get -qq upgrade)
yes | (apt install aptitude ;aptitude update -q; ai sudo python3-pip hstr zsh progress libevent-dev)

yes | (ai htop ; ai tmux ;ai vim-gtk; ai ack)
yes | (ai exiftool htop tree zdata locales language-pack-zh-hans language-pack-zh-hans-base)
yes | (ai curl; pip3 install --upgrade pip ; pip3 install pudb ; pip3 install gpustat ; pip3 install tldr )
yes | (sh -c "$(curl -fSL https://raw.githubusercontent.com/hoseahsu/oh-my-tmux/master/install.sh)" ; curl -sLf https://spacevim.org/cn/install.sh | bash )
yes | (apt install python3-dev python3-pip python3-setuptools ; pip3 install thefuck)
yes | (apt-get install language-pack-zh-hans language-pack-zh-hans-base ; ai peco wget mutt msmtp)
touch ~/.msmtp.log
yes | (aptitude install npm; npm install -g tldr)

#Linux日期不准确，要更改 Linux 系统整个系统范围的时区可以使用如下命令：
locale-gen zh_CN.UTF-8 
rm -f /etc/localtime &&  ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
yes | (cp ~/dot_file/vimrc ~/.SpaceVim/vimrc ; cp ~/dot_file/.tmux.conf  ~/.tmux.conf )
mkdir -p ~/.SpaceVim.d/
yes | (cp ~/dot_file/init.toml  ~/.SpaceVim.d/; cp ~/dot_file/.zshrc ~/ )  

sudo apt install neovim
sudo apt install python-neovim
sudo apt install python3-neovim


# 要用vim 8以上版本，ycm不支持vim7.4，执行vimplus的install.sh会自动去下载最新的vim，但因为网络问题，git clone可能会失败，导致vim安装失败，你要确保vim版本必须是8以上的。
###ubuntu 16以下,尝试：
#nvim
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
#下载好在dot_file了

# chmod u+x nvim.appimage
# ./nvim.appimage
# ./nvim.appimage --appimage-extract
# ./squashfs-root/AppRun --version
##Optional: exposing nvim globally
# yes | rm /usr/bin/vim
# mv squashfs-root / && ln -s /squashfs-root/AppRun /usr/bin/vim

yes | (ai silversearcher-ag)
mv /etc/apt/apt.conf /etc/apt/apt.conf.luoyi

#应该需要手动
##需要交互; aptitude install -y postfix
postconf smtputf8_enable=no
postfix reload

# 修改默认python
rm /usr/bin/python 
ln -s /usr/bin/python3.? /usr/bin/python 
chsh -s `which zsh`; 
ln -s /opt/data/private/trash /t
zsh
