" Keymappings configuration
" NERDTREE Keymaps
nnoremap <silent> <F2> :NERDTreeFind<CR>

" Maps Leader to ,
let mapleader=','

" Maps leader e to toggle search with fzf
nnoremap <silent> <leader>e :Files<CR>

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Navigate in virtual lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

noremap <leader>d :DartFmt<CR>

"" Toggle find
nnoremap <silent> <leader>f :Rgrep<CR>

"" Navigates to definition in javascript
nnoremap <silent> <leader>u gd3wgf<CR>

" tabs shortcuts
nnoremap <silent><leader>t :tabnew<cr>
nmap <silent><C-}> :tabnext<cr>
nmap <silent><C-{> :tabprev<cr>
nnoremap <silent><leader><leader>c :tabclose<cr>
nnoremap <silent><leader>1 :tabnext 1<cr>
nnoremap <silent><leader>2 :tabnext 2<cr>
nnoremap <silent><leader>3 :tabnext 3<cr>
nnoremap <silent><leader>4 :tabnext 4<cr>
nnoremap <silent><leader>5 :tabnext 5<cr>
nnoremap <silent><leader>6 :tabnext 6<cr>
nnoremap <silent><leader>7 :tabnext 7<cr>
nnoremap <silent><leader>8 :tabnext 8<cr>
nnoremap <silent><leader>9 :tablast <cr>


nnoremap <leader>fr :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>r :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
nnoremap <leader>fl :FlutterEmulatorsLaunch<cr>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" CTROL + SPACE triggers completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <C-F>f <Plug>CtrlSFPrompt                  
nmap <C-F>n <Plug>CtrlSFCwordPath
nmap <C-F>p <Plug>CtrlSFPwordPath
