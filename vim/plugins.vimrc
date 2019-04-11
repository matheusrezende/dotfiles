let g:lsc_server_commands = {'dart': 'dart_language_server'}

" let g:ale_fix_on_save = 1
" let g:ale_fixers = {
" \   'javascript': ['eslint'],
" \   'typescript': ['tslint'],
" \}
"" NERDTree configuration
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 40
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite


" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"


"" grep.vim
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

"" Omnisharp for cs files
let g:OmniSharp_port = 2000
let g:OmniSharp_start_server = 1

"" Tern Configuration
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]


let g:coc_global_extensions=[
    \ "coc-tsserver",
    \ "coc-json", 
    \ "coc-css",
    \ "coc-omni",
\]
