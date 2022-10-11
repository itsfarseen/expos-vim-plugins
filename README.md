# eXpOS Vim Plugins

### Installation
* Vim Plug
    ```
        Plug 'itsfarseen/expos-vim-plugins'
    ```
* Vundle
    ```
        Plugin 'itsfarseen/expos-vim-plugins'
    ```
* Pathogen
    ```
        cd ~/.vim/bundle # or whichever directory you configured for pathogen
        git clone https://github.com/itsfarseen/expos-vim-plugins.git
    ```
* Packer 
    ```
        cd ~/.config/nvim/lua/plugins/init.lua # or whichever directory you initialized packer
        use 'itsfarseen/expos-vim-plugins'
        
        inside return require('packer').startup(function(use) ... )
    ```


### Features

* Full syntax highlighting for SPL
* All SPL Constants are recognized
* Catches errors like [PROCESS_TABLE + PID*17] instead of [PROCESS_TABLE + PID*16]
* multipush and multipop are assigned different colors to catch errors like 
  multipush without multipop or vice versa
* Almost full syntax highlighting support for EXPL

### Screenshot

#### Spl
![](screenshot_spl.png)
#### Expl
![](screenshot_expl.png)
