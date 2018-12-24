set nocompatible
filetype plugin indent on    " required

set statusline+=%F
set laststatus=2
set number

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

set noswapfile
set undofile
set undodir=~/.vim/undo

au FileType javascript setl sw=2 sts=2 et
au FileType python set colorcolumn=80
au FileType markdown set colorcolumn=80

set nocursorline
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

au BufNewFile,BufRead *.html set filetype=htmldjango


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_python_checkers = ['pylint']

if has('gui_running')
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 24
    colorscheme materialbox
    set background=dark
    autocmd ColorScheme * highlight Normal guifg=white guibg=black 
    highlight MatchParen cterm=bold ctermfg=red ctermbg=NONE gui=bold guifg=white guibg=NONE
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa
endif

if has('nvim')
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa
    set foldenable
    set foldmethod=indent
    nnoremap <C-a> zA
endif
