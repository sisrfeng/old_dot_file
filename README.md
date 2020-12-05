# dot_file
zsh+tmux+vim   
 ```rm -r ~/dot_file ; yes | (apt-get install git)  ; cd ~ && git clone https://github.com/sisrfeng/dot_file.git && cd ~/dot_file ; bash auto_install.sh ```
 
1. So far, can not install peco on some ubuntu (maybe too old, like 16.04)   
2. Something strange:    
In ~/dot_file/.zshrc, export PS1=">>at_here>>"  
But in ~/.zshrc, export PS1="@ "  
~/dot_file/.zshrc, instead of ~/.zshrc, takes effect.  
Then I  remove ~/dot_file/.zshrc, things go right.


ref:  
为什么说 zsh 是 shell 中的极品？ - 韦易笑的回答 - 知乎
https://www.zhihu.com/question/21418449/answer/300879747
