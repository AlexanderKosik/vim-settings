set number
set smartcase

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

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

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

