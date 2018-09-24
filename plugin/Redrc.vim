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

set nocursorline
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

au BufNewFile,BufRead *.html set filetype=htmldjango

if has('gui_running')
    colorscheme tomorrownightbright
    set guioptions-=T
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa
endif
