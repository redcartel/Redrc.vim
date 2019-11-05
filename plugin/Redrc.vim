" Carter's vim defaults available as a plugin on github. redcartel/Redrc.vim
" 2018 - the end of time

" I usually import vim-sensible prior to this

set nocompatible

" .swp sucks
set noswapfile

" poor man's vcs
set undofile
set undodir=~/.vim/undo

set statusline+=%F
set laststatus=2

set number

set colorcolumn=80

" you know this dril
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set title
set history=10000
set mouse=a

set wildmenu
set ruler
set scrolloff=2
set autoread
set showcmd
set showmatch
set matchtime=3
set termguicolors
set spell

" no macros or ex
nnoremap Q <nop>
map q <nop>

" better block indenting
vmap < <gv
vmap > >gv

" jump around windows with Ctrl-arrows
map <C-Right> <C-W>l
map <C-Left> <C-W>h
map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-o> <C-W>o

nnoremap <C-=> :res +1<cr>
nnoremap <C--> :res -1<cr>

" javascript gets 2 spaces for an indent
au FileType javascript setlocal sw=2 sts=2 ts=2
au FileType html setlocal ts=2 sts=2 sw=2

" cursorline in normal mode (I like looking at it and
" it encourages me to be in normal mode more)
set nocursorline
autocmd InsertEnter * set nocursorline | set nocursorcolumn
autocmd InsertLeave * set cursorline | set cursorcolumn 
autocmd CursorMoved * set cursorline | set cursorcolumn

" ctrl-forward slash clears search highlighting
noremap <C-/> :nohl<cr>

set foldenable
set foldmethod=indent
set foldlevel=999
command! -nargs=1 F :set foldlevel=<args>

" <Leader> (I keep it default \) commands to turn
" folding on and off
nnoremap <Leader>R :set nofoldenable<CR>
nnoremap <Leader>M :set foldenable<CR>

map <C-s> <esc>:w<cr>
map <C-q> <esc>:qa!<cr>

if has('gui_running')
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa

    set spell
endif
