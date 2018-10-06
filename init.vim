set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'joshdick/onedark.vim'
Plugin 'tomasr/molokai'
Plugin 'elixir-lang/vim-elixir'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'mhartington/nvim-typescript'
Plugin 'shougo/deoplete.nvim'
Plugin 'rust-lang/rust.vim'
call vundle#end()

filetype plugin indent on

" Enable fuzzy-finder
set rtp+=/usr/local/opt/fzf

set clipboard=unnamed

set colorcolumn=80
set laststatus=2
set updatetime=500
set completeopt=menuone,preview,noinsert
syntax enable
set number showmatch
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent
let mapleader=","

colo molokai

let g:deoplete#enable_at_startup = 1

if (has("termguicolors"))
  set termguicolors
endif

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
