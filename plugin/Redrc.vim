" Carter's vim defaults available as a plugin on github. redcartel/Redrc.vim
" 2018 - the end of time

" be improved. also see vim-sensible plugin
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
set expandtab
set smartindent
set autoindent

" javascript gets 2 spaces for an indent
au FileType javascript setl sw=2 sts=2 et


" cursorline in insert mode only
" TODO: bugged when switching between splits sometimes
set nocursorline
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" ctrl-forward slash clears search highlighting
noremap <C-/> :nohl<cr>

set foldenable
set foldmethod=indent

" folds closed by default in neovim, open otherwise
if has('nvim')
    set foldlevel=1
else
    set foldlevel=99
endif

nnoremap <Leader>R :set nofoldenable<CR>
nnoremap <Leader>M :set foldenable<CR>

"fast movement
nnoremap <Leader>j 31j
nnoremap <Leader>k 31k

if has('gui_running')

    set mouse=a
    " ctrl-c copy in visual, ctrl-x cut in visual,
    " ctrl-v paste in insert, ctrl-v paste replace in visual
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <ESC>"+pa
endif
