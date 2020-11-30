set -x

cat> /etc/hosts<<EOF
# GitHub hosts 
192.30.253.112    GitHub: Where the world builds software 
192.30.253.119    gist.github.com
151.101.184.133    assets-cdn.github.com
151.101.184.133    GitHub: Where the world builds software
151.101.184.133    gist.githubusercontent.com
151.101.184.133    cloud.githubusercontent.com
151.101.184.133    camo.githubusercontent.com
151.101.184.133    avatars0.githubusercontent.com
151.101.184.133    GitHub: Where the world builds software
151.101.184.133    avatars2.githubusercontent.com
151.101.184.133    GitHub: Where the world builds software
151.101.184.133    GitHub: Where the world builds software
151.101.184.133    avatars5.githubusercontent.com
151.101.184.133    GitHub: Where the world builds software
151.101.184.133    avatars7.githubusercontent.com
151.101.184.133    GitHub: Where the world builds software
151.101.185.194    github.global.ssl.fastly.net

## some may be the same
## GitHub Start
192.30.253.112 http://github.com

192.30.253.113 http://github.com

151.101.184.133 http://assets-cdn.github.com

151.101.185.194 http://github.global.ssl.fastly.net

192.30.253.112 http://github.com

192.30.253.113 http://github.com

192.30.253.118 http://gist.github.com

151.101.185.194 http://github.global.ssl.fastly.net

151.101.129.194 http://github.global.ssl.fastly.net

151.101.65.194 http://github.global.ssl.fastly.net

151.101.1.194 http://github.global.ssl.fastly.net

151.101.193.194 http://github.global.ssl.fastly.net

151.101.77.194 http://github.global.ssl.fastly.net

151.101.229.194 http://github.global.ssl.fastly.net

151.101.113.194 http://github.global.ssl.fastly.net

151.101.196.133 http://assets-cdn.github.com

151.101.24.133 http://assets-cdn.github.com

185.199.111.153 http://assets-cdn.github.com

185.199.110.153 http://assets-cdn.github.com

185.199.108.153 http://assets-cdn.github.com

185.199.109.153 http://assets-cdn.github.com

151.101.112.133 http://assets-cdn.github.com

151.101.112.133 http://avatars0.githubusercontent.com

151.101.112.133 http://avatars1.githubusercontent.com

151.101.184.133 http://avatars2.githubusercontent.com

151.101.12.133 http://avatars3.githubusercontent.com

151.101.12.133 http://avatars4.githubusercontent.com

151.101.184.133 http://avatars5.githubusercontent.com

151.101.184.133 http://avatars6.githubusercontent.com

151.101.184.133 http://avatars7.githubusercontent.com

151.101.12.133 http://avatars8.githubusercontent.com

151.101.184.133 http://raw.githubusercontent.com

151.101.112.133 http://gist.githubusercontent.com

151.101.184.133 http://cloud.githubusercontent.com

151.101.112.133 http://camo.githubusercontent.com

52.216.227.168 http://github-cloud.s3.amazonaws.com

192.30.253.112 http://github.com

185.199.108.153 http://assets-cdn.github.com

151.101.185.194 http://github.global.ssl.fastly.net

140.82.113.10 http://codeload.github.com

# 下载慢问题
219.76.4.4 http://github-cloud.s3.amazonaws.com

## GitHub End


EOF

cat>>~/.bashrc<<EOF
alias ai='apt install -y -qq'
EOF
source ~/.bashrc

ai install nscd 
/etc/init.d/nscd restart

pip3 install pysocks

# mkdir ~/.pip ; cat>~/.pip/pip.conf<<EOF
# [global]
# index-url = https://pypi.tuna.tsinghua.edu.cn/simple
# EOF

yes | (ln -s /opt/data/private/anaconda3 ~/)

#http://huanyouchen.github.io/2018/04/27/pip-install-Missing-dependencies-for-SOCKS-support/
# unset all_proxy
# unset ALL_PROXY

yes | (add-apt-repository ppa:ultradvorka/ppa && apt-get update && apt-get upgrade)
yes | (apt install aptitude ;aptitude update ; aptitude install sudo python3-pip hstr zsh progress libevent-dev)

export ALL_PROXY=' '
pip3 install pysocks
pro

yes | (aptitude install git ; aptitude install tmux ;aptitude install vim-gtk; aptitude install ack ; aptitude install exiftool;  aptitude install htop; aptitude install tree ; aptitude install tzdata ; chsh -s `which zsh`; aptitude install locales ; aptitude install language-pack-zh-hans language-pack-zh-hans-base; aptitude install curl; pip3 install --upgrade pip ; pip3 install pudb ; pip3 install gpustat ; pip3 install tldr ; sh -c "$(curl -fSL https://raw.githubusercontent.com/hoseahsu/oh-my-tmux/master/install.sh)" ; curl -sLf https://spacevim.org/cn/install.sh | bash ; apt install python3-dev python3-pip python3-setuptools ; pip3 install thefuck)
yes | (apt-get install language-pack-zh-hans language-pack-zh-hans-base ; aptitude install peco wget)

#Linux日期不准确，要更改 Linux 系统整个系统范围的时区可以使用如下命令：
locale-gen zh_CN.UTF-8 
sudo rm -f /etc/localtime && sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
yes | (cp ~/dot_file/vimrc ~/.SpaceVim/vimrc ; cp ~/dot_file/.tmux.conf  ~/.tmux.conf )
mkdir -p ~/.SpaceVim.d/
yes | (cp ~/dot_file/init.toml  ~/.SpaceVim.d/; cp ~/dot_file/.zshrc ~/ )  

#nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
# Optional: exposing nvim globally
yes | rm /usr/bin/vim
mv squashfs-root / && ln -s /squashfs-root/AppRun /usr/bin/vim

yes | (aptitude install silversearcher-ag)
mv /etc/apt/apt.conf /etc/apt/apt.conf.luoyi
yes | unminimize

# 修改默认python
sudo rm /usr/bin/python 
sudo ln -s /usr/bin/python3.? /usr/bin/python 
zsh

#todo
# 要用vim 8以上版本，ycm不支持vim7.4，执行vimplus的install.sh会自动去下载最新的vim，但因为网络问题，git clone可能会失败，导致vim安装失败，你要确保vim版本必须是8以上的。
