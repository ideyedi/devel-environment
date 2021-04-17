# devel-environment    

> git remote branch set-up
>> eyedi-env is remote branch name

1. git init 
2. git remote add origin https://github.com/gdregas0/devel-environment.git   
3. git remote update   
4. git commit -m "Initialize message"
5. git fetch --all
6. git checkout -b main origin/main
7. chsh -s $(which zsh)
8. sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
9. git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

> Need to install submodule   
1. install fzf
- git clone https://github.com/junegunn/fzf.git ~/.fzf
- ~/.fzf/install   - run install binary

2. git clone gruvbox
- git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

3. git clone kotlin-vim
- git clone https://github.com/udalov/kotlin-vim.git ~/.vim/pack/default/start/kotlin-vim
