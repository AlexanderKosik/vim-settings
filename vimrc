set number
set smartcase

" Fuzzy finder
set rtp+=~/.fzf

" ----------------------------------------------
" Vundle plugin manager
" Installation:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Danach: :PluginInstall
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
Plugin 'puremourning/vimspector'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ----------------------------------------------
" Other plugin manager
" Installation:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Danach: :PlugInstall
" ----------------------------------------------
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Vundle Plugin Manager end
" :set path+=/home/...//**5
" goes down 5 subdirectories

let mapleader = ","

" macro to switch headers in c++ (.cpp and .h)
:nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" shortcut for buffer
:nnoremap ,b :ls<CR>:buffer<Space>

" find whitespaces on end of line
:nnoremap <F6> :%s/\s\+$//g<CR>

" Run current file
" :nnoremap <F9> :! %:p<enter>

" clear search
:nnoremap <F12> :nohl<CR>
:map <C-right> <ESC>:bn<CR>
:map <C-left> <ESC>:bp<CR>

" use gj instead of j
:nnoremap j gj
:nnoremap k gk

:syntax on


" ----------
"  VIMSPECTOR
"  ---------
let g:vimspector_enable_mappings = 'HUMAN'
" mnemonic 'di' = 'debug inspect' 
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

" --------------
" FZF
" --------------
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

" :colorscheme onedark
:colorscheme elflord
:set hlsearch
:set incsearch

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

