" Carter's vim defaults available as a plugin on github. redcartel/Redrc.vim
" 2018 - the end of time
" I usually import vim-sensible prior to this

set nocompatible

" .swp sucks
set noswapfile

" poor man's vcs
set undofile
set undodir=~/.vim/undo

" set statusline+=%F
" set laststatus=2

" mandatory
set number

" pep8 reminder
set colorcolumn=80

" you know this dril
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set title

" no macros or ex
nnoremap Q <nop>
map q <nop>

" better block indenting
vmap < <gv
vmap > >gv

" jump around windows with Ctrl-arrows
map <C-Right> <C-W>l<C-W>
map <C-Left> <C-W>h<C-W>
map <C-Down> <C-W>j<C-W>
map <C-Up> <C-W>k<C-W>

" javascript gets 2 spaces for an indent
au FileType javascript setlocal sw=2 sts=2 ts=2
au FileType html setlocal ts=2 sts=2 sw=2

" cursorline in normal mode (I like looking at it and
" it encourages me to be in normal mode more)
set nocursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
autocmd CursorMoved * set cursorline

" ctrl-forward slash clears search highlighting
noremap <C-/> :nohl<cr>

set foldenable
set foldmethod=indent

" folds closed by default in neovim, open otherwise
if has('nvim')
    set foldlevel=2
else
    set foldlevel=99
endif

" <Leader> (I keep it default \) commands to turn
" folding on and off
nnoremap <Leader>R :set nofoldenable<CR>
nnoremap <Leader>M :set foldenable<CR>

nmap <C-s> <CR>
imap <C-s> <ESC>
vmap <C-s> <ESC>

if has('gui_running')
    set mouse=a
    " ctrl-c copy in visual, ctrl-x cut in visual,
    " ctrl-v paste in insert, ctrl-v paste replace in visual
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa
else
    " <leader>
    vnoremap  <leader>y  "+y
    nnoremap  <leader>Y  "+yg_
    nnoremap  <leader>y  "+y
    nnoremap  <leader>yy  "+yy
endif
