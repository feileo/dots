
export WORKON_HOME=~/.pyenvs
source ~/.local/bin/virtualenvwrapper.sh

# go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/gos/ext:$HOME/gos/dev
# vim-go bin
export VIMGOBIN=$HOME/gos/mypkg/bin

# mysql
PATH="/usr/local/mysql/bin:${PATH}"
export PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export VERSIONER_PYTHON_PREFER_64_BIT=no
export VERSIONER_PYTHON_PREFER_32_BIT=yes

# vim undodir
export VIMUNDO_DIR=$HOME/.vimundodir
