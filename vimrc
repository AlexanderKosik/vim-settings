set number
set smartcase

" Fuzzy finder
set rtp+=~/.fzf

" ----------------------------------------------
" Vundle plugin manager
" ----------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'flazz/vim-colorschemes'
Plugin 'joshdick/onedark.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ----------------------------------------------
" Other plugin manager
" ----------------------------------------------
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Vundle Plugin Manager end
" :set path+=/home/...//**5
" goes down 5 subdirectories

" macro to switch headers in c++ (.cpp and .h)
:nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" shortcut for buffer
:nnoremap ,b :ls<CR>:buffer<Space>

" find whitespaces on end of line
:nnoremap <F6> :%s/\s\+$//g<CR>

" call make - replace with something else if on another system/language
:nnoremap <F5> :w<CR>:make<CR>

" find in ctag file 
:nnoremap <F8> :tag /<c-r><c-w><CR>

" activate search
:nnoremap <F11> :set hlsearch<CR>

" clear search
:nnoremap <F12> :nohl<CR>
:map <C-right> <ESC>:bn<CR>
:map <C-left> <ESC>:bp<CR>

" use gj instead of j
:nnoremap j gj
:nnoremap k gk

:syntax on

" Add FZF as ctrl+p
noremap <silent> <C-P> :GFiles<CR>

" Add Rg as Ctrl F 
noremap <silent> <C-F> :Rg<CR>

" path to tags file (c++)
" :set tags=/home/.../tags

" PEP8 for python files
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4  textwidth=79  expandtab  autoindent  fileformat=unix

"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" 2 tabs for C++
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2  shiftwidth=2 textwidth=120 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2  shiftwidth=2 textwidth=120 expandtab autoindent fileformat=unix

" :nnoremap <F8>: exec "tag /".expand("<cword>")<CR>

:colorscheme onedark
:set hlsearch

" enable smart search
:set ignorecase
:set smartcase

" allow copy paste between different vims
" needs +X11 flag (check with :version)
" configure and compile with --enable-gui=auto
" Alternative: Compile with: ./configure --with-features=huge
" Make sure, you 'make install' after compile
set clipboard=unnamedplus

" change directory with file change
set autochdir

" set cursorline
" :hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
" :hi CursorColumn cterm=NONE ctermbg=darkgreen  ctermfg=white guibg=darkgreen guifg=white
" :nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set backspace=indent,eol,start

