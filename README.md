# devel-environment    

> git remote branch set-up   
1. git init 
2. git remote add <remote-name> https://github.com/gdregas0/devel-environment.git   
3. git remote update   
4. git checkout -b <local-name> <remote-name>    

> Need to install submodule   
1. install fzf
- git clone https://github.com/junegunn/fzf.git ~/.fzf
- ~/.fzf/install   - run install binary

2. git clone gruvbox
- git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

3. git clone kotlin-vim
- git clone https://github.com/udalov/kotlin-vim.git ~/.vim/pack/default/start/kotlin-vim
