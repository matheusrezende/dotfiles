" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  "Typescript
 " Plug 'HerringtonDarkholme/yats.vim'
  Plug 'soywod/typescript.vim'
  " Javascript
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'jiangmiao/auto-pairs'
  Plug 'sbdchd/neoformat'
  Plug 'tpope/vim-rhubarb'
  Plug 'vim-scripts/grep.vim'
  " Import
  Plug 'Galooshi/vim-import-js'
  Plug 'soywod/typescript.vim'
    " Dart
  Plug 'dart-lang/dart-vim-plugin'
  " Tmux
  Plug 'christoomey/vim-tmux-navigator'
  " UI
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'airblade/vim-gitgutter'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'luochen1990/rainbow'
  Plug 'rakr/vim-one', { 'as': 'one' }
  "" HTML Bundle
  Plug 'hail2u/vim-css3-syntax'
  Plug 'gorodinskiy/vim-coloresque'
  Plug 'tpope/vim-haml'
  Plug 'mattn/emmet-vim'
  "" Auto completion features
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  "" Fuzzy search
  if isdirectory('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
  endif
call plug#end()
