==========
optimus 🚒   
==========

.. image:: https://img.shields.io/static/v1.svg?label=optimus&message=fight&color=orange

My neovim_ + oh-my-zsh_ + tmux_ configuration file. I will synchronize frequently.

This is the favorite weapon of the terminal developer, like writing poetry in the garden.

It's my optimus, which includes:

* 🐉 A vim/neovim configuration file sufficient for pythoner and gopher.

* 🚀 An efficient oh-my-zsh configuration file.

* 🏝  A pretty tmux configuration file based on oh-my-tmux_.


usage
-----

Get optimus:

.. code-block:: console

   cd
   git clone https://github.com/acthse/optimus.git


vim/veovim
**********

* install plug.vim_

  If you are using vim:

  .. code-block:: console

     curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  If you are using neovim:

  .. code-block:: console

     curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

* deploy:

  .. code-block:: console

     ln -s ~/optimus/vimrc .vimrc
     ln -s ~/optimus/vimplugs.conf .vimplugs.conf

  Extra, for neovim:

  .. code-block:: console

     cd ~/.config/nvim/
     ln -s ~/.vimrc init.vim


oh-my-zsh
*********

.. code-block:: console

   ln -s ~/optimus/zshrc .zshrc

tmux
****

.. code-block:: console

   ln -s optimus/tmux.conf .tmux.conf
   ln -s optimus/tmux.conf.local .tmux.conf.local

.. _neovim: https://neovim.io/
.. _oh-my-zsh_: https://github.com/robbyrussell/oh-my-zsh
.. _tmux: https://github.com/tmux/tmux
.. _oh-my-tmux: https://github.com/gpakosz/.tmux/tree/master
.. _plug.vim: https://github.com/junegunn/vim-plug
