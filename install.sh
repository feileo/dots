
# vim/neovim

# plug.vim for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# plug.vim for neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/acthse/optimus.git


# use for vim
ln -s ~/optimus/vimrc .vimrc
ln -s ~/optimus/vimplugs.conf .vimplugs.conf

# use for neovim
cd ~/.config/nvim/
ln -s ~/.vimrc init.vim

# zsh
ln -s ~/optimus/zshrc .zshrc
