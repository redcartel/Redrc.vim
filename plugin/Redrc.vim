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
