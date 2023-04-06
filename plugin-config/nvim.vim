set nocompatible
set termguicolors
filetype plugin indent on
syntax on
" set guifont=SF\ Pro:h1
set guifont=OperatorMono-LightItalic
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set number
set noswapfile
set clipboard=unnamedplus
set encoding=utf8
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
set relativenumber
" set number
set lazyredraw
" set guitablabel=%t
set guitablabel=\[%N\]\ %t\ %M

" colorscheme OceanicNext
colorscheme nightfly

" for make trasparent when using ocean next
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:python3_host_prog = '/usr/local/bin/python3'

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
