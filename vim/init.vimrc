" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'w0rp/ale'
  Plug 'tpope/vim-sensible'
  Plug 'pangloss/vim-javascript'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'vim-scripts/grep.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'Galooshi/vim-import-js'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Shougo/neosnippet'
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
