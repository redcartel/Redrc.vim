" Carter's vim defaults available as a plugin on github. redcartel/Redrc.vim
" Dec 2019

" I use a three vims setup. vim is configured to be just itself with
" some non-obtrusive extras. gvim is set up to be Notepad. nvim is
" where all of my mad science wannabe IDE config goes

" .swp sucks
set noswapfile

" poor man's vcs
set undofile
set undodir=~/.vim/undo

set statusline+=%F
set laststatus=2

set number
set colorcolumn=80

" you know this drill
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
" Ctrl+ o makes window only window
map <M-o> <C-W>o

" Ctrl+ Ctrl- increase / decrease window size
map <C-PageUp> <esc>:res +3<cr>
map <C-PageDown> <esc>:res -3<cr>

" javascript gets 2 spaces for an indent
augroup specialindents
au FileType javascript setlocal sw=2 sts=2 ts=2
au FileType json setlocal sw=2 sts=2 ts=2
au FileType html setlocal ts=2 sts=2 sw=2
augroup END

" cursorline in normal mode (I like looking at it and
" it encourages me to be in normal mode more)
set nocursorline
augroup crosshairs
autocmd InsertEnter * set nocursorline | set nocursorcolumn
autocmd InsertLeave * set cursorline | set cursorcolumn 
autocmd CursorMoved * set cursorline | set cursorcolumn
augroup END

" ctrl-forward slash clears search highlighting
noremap <C-/> :nohl<cr>

" folds on but unfolded at start
set foldenable
set foldmethod=indent
set foldlevel=999
command! -nargs=1 F :set foldlevel=<args>
" <Leader> (I keep it default \) commands to turn
" folding on and off
nnoremap <Leader>ff :set foldlevel=99<CR>
nnoremap <Leader>fa zA
nnoremap <Leader>f0 :set foldlevel=0<CR>
nnoremap <Leader>f1 :set foldlevel=1<CR>
nnoremap <Leader>f2 :set foldlevel=2<CR>
nnoremap <Leader>f3 :set foldlevel=3<CR>
nnoremap <Leader>f4 :set foldlevel=4<CR>
nnoremap <Leader>f5 :set foldlevel=5<CR>
nnoremap <Leader>f6 :set foldlevel=6<CR>
nnoremap <Leader>f7 :set foldlevel=7<CR>
nnoremap <Leader>f8 :set foldlevel=8<CR>
nnoremap <Leader>f9 :set foldlevel=9<CR>

if has('gui_running')
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa
    set textwidth=80
    set wrap
    set nonumber
    set spell
else
    imap <C-/> hello
endif

let g:redrc='Jan 21 2019'
