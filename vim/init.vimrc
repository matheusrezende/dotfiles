" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'w0rp/ale'
  Plug 'tpope/vim-sensible'
  Plug 'pangloss/vim-javascript'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'carlitux/deoplete-ternjs'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern' }
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }
  Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
  Plug 'mhartington/deoplete-typescript'
  Plug 'vim-scripts/grep.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'Galooshi/vim-import-js'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'wokalski/autocomplete-flow'
  Plug 'Shougo/neosnippet'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  if isdirectory('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
  endif

call plug#end()
