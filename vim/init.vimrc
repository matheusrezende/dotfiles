" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')
" tpopek plugins
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  " linting and autofix
  " Plug 'w0rp/ale'
  " javascript linting files
  Plug 'pangloss/vim-javascript'
  " Nerdtree
  Plug 'scrooloose/nerdtree'
  " auto complete pairs
  Plug 'jiangmiao/auto-pairs'
  Plug 'vim-scripts/grep.vim'
  " general linting
  "Javascript Plugins
  Plug 'sheerun/vim-polyglot'
  Plug 'mxw/vim-jsx'
  Plug 'Galooshi/vim-import-js'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'ryanoasis/vim-devicons'
  Plug 'airblade/vim-gitgutter'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  " Dart Plugins
  Plug 'dart-lang/dart-vim-plugin'
  " Tmux
  Plug 'christoomey/vim-tmux-navigator'
  " THeme
  Plug 'dracula/vim', { 'as': 'dracula' }
  " For autocompletion features
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  if isdirectory('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
  endif
call plug#end()
