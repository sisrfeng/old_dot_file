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
EOF


yes | (apt-get update ; apt-get upgrade ; apt-get install zsh)
yes | (cp ~/dot_file/.zshrc ~/ && source ~/.zshrc )
zsh
yes | (apt install libevent-dev ; apt install libevent-dev ; apt-get install aptitude ;aptitude update ; ai sudo; ai git ; ai tmux ;ai vim-gtk; ai ack ; ai exiftool;  ai htop; ai tree ; ai tzdata ; chsh -s `which zsh`; ai locales ; ai language-pack-zh-hans-baseai language-pack-zh-hans ; ai curl ; apt install peco ; pip install --upgrade pip ; pip install pudb ; pip install gpustat ; pip install tldr ; sh -c "$(curl -fSL https://raw.githubusercontent.com/hoseahsu/oh-my-tmux/master/install.sh)" ; curl -sLf https://spacevim.org/cn/install.sh | zsh ; apt install python3-dev python3-pip python3-setuptools ; pip3 install thefuck)


#Linux日期不准确，要更改 Linux 系统整个系统范围的时区可以使用如下命令：
sudo rm -f /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 修改默认python
sudo rm /usr/bin/python
sudo ln -s /usr/bin/python3.? /usr/bin/python


yes | (cp ~/dot_file/vimrc ~/.SpaceVim/vimrc ; cp ~/dot_file/.tmux.conf  ~/.tmux.conf ; cp ~/dot_file/init.toml  ~/.SpaceVim.d/init.toml; cp ~/dot_file/.zshrc ~/ && source ~/.zshrc )

#一键执行的命令结束。
