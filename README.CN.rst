===========
my dotfiles
===========

我的 `neo/vim`_ , tmux_, `oh-my-zsh <https://ohmyz.sh>`_ 等配置 😊


结构:

* `vim/`_: 适用于 **Pythonista** 和 **Gopher** 的模块化 **Neo/vim** 配置，强大而轻快

  - `colors/sunrise.vim </vim/colors>`_: 我的 colorscheme, 此方案还针对一些插件做了增强补充和优化
  - `config/ </vim/config>`_: 配置

    + `filetype.vim </vim/config>`_: 语言行为配置
    + `general.vim </vim/config>`_: 内置配置
    + `mappings.vim </vim/config>`_: 键位配置
    + `plugins.vim </vim/config>`_: 插件管理与配置
    + `local.vim </vim/config>`_: 用户自定义配置
    + `... </vim/config>`_

  - `filetype.vim </vim/filetype.vim>`_: 自定义文件类型检测
  - `init.vim </vim/init.vim>`_: 初始化、入口
  - `... </vim>`_

* `tmux/`_:  基于 `gpakosz/.tmux`_ 强大且美观的 **tmux** 配置

  - `tmux.conf </tmux>`_: 基础配置，最好不要编辑
  - `tmux.conf.local </tmux>`_: 自定义设置，可通过编辑此文件覆盖上面文件里的配置
  - `tmux.conf.plugs </tmux>`_: 插件管理及其配置

* `zsh/`_: **oh-my-zsh** 配置

  - `zshrc </zsh>`_: zsh 配置
  - `zshrc.local </zsh>`_: 自定义本地配置


使用
----

获取项目:

.. code-block:: bash

    $ git clone https://github.com/at7h/dots.git ~/.dots


Neo/vim
*******

* **1.** 应用配置

  对于 Neovim:

  .. code-block:: bash

    $ ln -s ~/.dots/vim/ ~/.config/nvim

  或者，对于 Vim:

  .. code-block:: bash

    $ ln -s ~/.dots/vim/.vimrc ~/

* **2.** 使用 ``PlugInstall`` 命令安装插件，更多详情请参见 `plug.vim`_

* **3.** 安装相关依赖

  - ``rg``
  - ``pynvim``
  - ``pylint``, ``flake8``, ``mypy`` 等静态代码检测工具
  - ``gopls``, ``golint``, ``goimports`` 等 go 语言工具

* **4.** 如果遇到问题，执行 ``nvim -c checkhealth`` 看看

完事儿，请享受它吧 😄

Tmux
****

* **1.** 安装 tpm_

  .. code-block:: bash

    $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    $ bash ~/.tmux/plugins/tpm/bin/install_plugins

* **2.** 应用设置

  .. code-block:: bash

    $ ln -s ~/.dots/tmux/tmux.conf ~/.tmux.conf

  可使用 ``tmux prefix`` + ``e`` 快捷键来编辑 tmux 配置 ``~/.dots/tmux/tmux.conf.local``

Oh-my-zsh
*********

* **1.** 安装依赖

  - zsh
  - `oh-my-zsh <https://github.com/robbyrussell/oh-my-zsh/>`_
  - powerlevel10k_
  - zsh-syntax-highlighting_ to ``~/.oh-my-zsh/plugins/``
  - zsh-autosuggestions_ to ``~/.oh-my-zsh/plugins/``

* **2.** `Font Installation <https://github.com/ryanoasis/nerd-fonts#Font%20Installation>`_.

  .. code-block:: bash

    # https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
    $ brew tap homebrew/cask-fonts
    $ brew cask install font-hack-nerd-font

  配置 Iterm2 的 non-acsii 字体：

  - ``Preferences -> Profiles -> Text -> Non-Ascii-Font -> hack-nerd-font.``
  - ``Preferences -> Profiles -> Colors -> Colors Presets -> Monokai Soda``

* **3.** 从 ``.dots/zsh/zshrc`` 中获取你感兴趣的配置或直接使用它

  .. code-block:: bash

    $ ln -s ~/.dots/zsh/zshrc ~/.zshrc


感谢 🤝
-------

如果项目对你有帮助请朝 ⭐️ 猛戳 😉 !


.. _oh-my-zsh: https://ohmyz.sh/
.. _neo/vim: https://neovim.io/
.. _gpakosz/.tmux: https://github.com/gpakosz/.tmux/tree/master
.. _vim/: /vim
.. _tmux/: /tmux
.. _zsh/: /zsh
.. _tmux: https://github.com/tmux/tmux
.. _plug.vim: https://github.com/junegunn/vim-plug
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
.. _python-mode/python-mode: https://github.com/python-mode/python-mode
.. _ycm-core/YouCompleteMe: https://github.com/ycm-core/YouCompleteMe
