set number
set smartcase

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'takac/vim-hardtime'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required

" Vundle Plugin Manager end
" :set path+=/home/...//**5
" goes down 5 subdirectories

" macro to switch headers in c++ (.cc and .h)
:nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cc$,.h,:s,.X123X$,.cc,<CR>

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

:syntax on

" path to tags file (c++)
" :set tags=/home/.../tags

" PEP8 for python files
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4  textwidth=79  expandtab  autoindent  fileformat=unix
"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" 2 tabs for C++
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2  shiftwidth=2 textwidth=120 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2  shiftwidth=2 textwidth=120 expandtab autoindent fileformat=unix

" :nnoremap <F8>: exec "tag /".expand("<cword>")<CR>

:colorscheme elflord
:set hlsearch

" enable smart search
:set ignorecase
:set smartcase

" allow copy paste between different vims
set clipboard=unnamed

" change directory with file change
set autochdir

set cursorline
:hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkgreen  ctermfg=white guibg=darkgreen guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

