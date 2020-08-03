" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'scrooloose/nerdtree'
  Plug 'luochen1990/rainbow'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'tpope/vim-commentary'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'tpope/vim-fugitive'
  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-repeat'
  Plug 'vim-airline/vim-airline'
  Plug 'dyng/ctrlsf.vim'
  Plug 'vim-airline/vim-airline-themes'
  if isdirectory('/usr/local/opt/fzf')
    Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  else
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
  endif

call plug#end()



