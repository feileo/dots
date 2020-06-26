====
dots
====

😈 我的 dotfiles(`oh-my-zsh <https://ohmyz.sh/>`_ + neovim_ + tmux_ 等配置)。

对于使用终端（iTerm2_, terminus_ 等）作为开发工具的工程师来说，这是他们最喜欢的武器，就像在花园里写诗一样 🌷。

此项目包括：

* 🐉 一个适合于 **Pythonista** 和 **Gopher** 的 **vim/neovim** 配置：

  - ``.vimrc``: 内置的设置和插件管理。
  - ``.vplugs.conf.vim``: 所有插件配置。
  - ``sunrise.vim``: 我自己的 colorscheme，针对一些插件做了补充和优化(比如对 Py 和 Go 语法高亮的增强支持)。

  其中有些插件使用了 neovim 最新的悬浮窗口的特性，需要升级至最新版才能使用。

* 🏝  一个基于 `gpakosz/.tmux <https://github.com/gpakosz/.tmux/tree/master>`_ 的非常美观的 **tmux** 配置：

  - ``.tmux.conf``: 基础配置文件，最好不要编辑此文件。
  - ``.tmux.conf.local``: 通过编辑此文件进行配置，它将覆盖上面文件里的配置。
  - ``.tmux.conf.plugs``: 在此文件中添加插件和编辑插件配置。

* 🚀 一个高效的 **oh-my-zsh** 配置：

  - ``.zshrc``: 你可以从中获取配置或直接使用它，它从 ``~/.dots/.zenv.sh`` 加载本地环境配置。


使用
----

获取项目:

.. code-block:: console

    $ git clone https://github.com/at7h/dots.git ~/.dots


For neovim/vim
**************

* **步骤 1**: 配置 ``.vimrc`` 或 ``init.vim`` 。

  **选项 1**: 对于 neovim：

  .. code-block:: console

    $ ln -s ~/.dots/.vimrc ~/.config/nvim/init.vim

  **选项 2**: 对于 vim：

  .. code-block:: console

    $ ln -s ~/.dots/.vimrc ~/

* **步骤 2**: 使用 ``PlugInstall`` 命令安装插件，更多详情请参见 `plug.vim <https://github.com/junegunn/vim-plug>`_ 。

* **步骤 3**: 应用 ``sunrise.vim`` 到 ``plugged/vim-colorschemes/colors``:

  .. code-block:: console

    # For neovim
    $ ln -s ~/.dots/sunrise.vim ~/.config/nvim/plugged/vim-colorschemes/colors/sunrise.vim
    # For vim
    $ ln -s ~/.dots/sunrise.vim ~/.vim/plugged/vim-colorschemes/colors/sunrise.vim

* **步骤 4**: 编译 YCM(`YouCompleteMe <https://github.com/Valloric/YouCompleteMe>`_)。

  关于详细的编译选项和其支持的语言，请参见 YouCompleteMe `Installation Guide <https://github.com/ycm-core/YouCompleteMe/#installation>`_ 。

完事儿，开始享受吧 😎。

下面附上插件列表以及选用理由:

==================================  ======================
插件                                理由
----------------------------------------------------------
语言支持类
==================================  ======================
`fatih/vim-go`_                       最好 go 语言插件
==================================  ======================

.. 插件学习

For tmux
********

* **步骤 1**: 安装 tpm_：

  .. code-block:: console

     git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
     bash ~/.tmux/plugins/tpm/bin/install_plugins

* **步骤 2**: 应用我的设置：

  .. code-block:: console

     ln -s ~/.dots/.tmux.conf ~/

  你可以使用 ``tmux prefix`` + ``e`` 快捷键来编辑 tmux 配置 ``~/.dots/.tmux.conf.local`` 。

For oh-my-zsh
*************

* **步骤 1**: 安装依赖：

  - zsh

  - `oh-my-zsh <https://github.com/robbyrussell/oh-my-zsh/>`_

  - powerlevel10k_ theme.

  - zsh-syntax-highlighting_ to ``~/.oh-my-zsh/plugins/``.

  - zsh-autosuggestions_ to ``~/.oh-my-zsh/plugins/``.

* **步骤 2**: `Font Installation <https://github.com/ryanoasis/nerd-fonts#Font%20Installation>`_.

  .. code-block:: console

     # Best option if on macOS and want to use Homebrew.
     # https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
     brew tap homebrew/cask-fonts
     brew cask install font-hack-nerd-font

  配置 Iterm2 的 non-acsii 字体：

  - ``Preferences -> Profiles -> Text -> Non-Ascii-Font -> hack-nerd-font.``

  - ``Preferences -> Profiles -> Colors -> Colors Presets -> Monokai Soda``

* **步骤 3**: 从 ``.dots/.zshrc`` 中获取配置或直接使用它。


感谢 🤝
-------

如果项目对你有帮助请朝 ⭐️ 猛戳 😉 !


.. _neovim: https://neovim.io/
.. _tmux: https://github.com/tmux/tmux
.. _iTerm2: https://www.iterm2.com/
.. _terminus: https://eugeny.github.io/terminus/
.. _latest: https://github.com/neovim/neovim/releases
.. _tpm: https://github.com/tmux-plugins/tpm
.. _powerlevel10k: https://github.com/romkatv/powerlevel10k
.. _zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
.. _zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
.. _undotree: https://github.com/mbbill/undotree
.. _article: https://blog.fullstackpentest.com/Pythonista%E5%92%8CPythoneer%E7%9A%84%E5%8C%BA%E5%88%AB-What-s-the-difference-between-Pythonista-and-Pythoneer.html

.. _fatih/vim-go: https://github.com/fatih/vim-go
