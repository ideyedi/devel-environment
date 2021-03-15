# devel-environment    

> git remote branch set-up
>> eyedi-env is remote branch name

1. git init 
2. git remote add eyedi-env https://github.com/gdregas0/devel-environment.git   
3. git remote update   
4. git commit -m "Initialize message"
5. git checkout eyedi-env -b eyedi-env/master   or    git checkout -t eyedi-env/master

> Need to install submodule   
1. install fzf
- git clone https://github.com/junegunn/fzf.git ~/.fzf
- ~/.fzf/install   - run install binary

2. git clone gruvbox
- git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

3. git clone kotlin-vim
- git clone https://github.com/udalov/kotlin-vim.git ~/.vim/pack/default/start/kotlin-vim
