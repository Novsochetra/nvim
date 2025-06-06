" ************************* Install Plugin ************************* "
call plug#begin('~/.vim/plugged')

Plug 'github/copilot.vim'

" for plugin copilot chat
Plug 'zbirenbaum/copilot.lua'
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
" for plugin copilot chat

Plug 'bluz71/vim-nightfly-guicolors'

Plug 'mhartington/oceanic-next'

Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

" Plugin for search file
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-context'

Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" Plugin for fluter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
" Plug 'othree/yajs.vim'

" Icons
Plug 'ryanoasis/vim-devicons'

" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'jiangmiao/auto-pairs'

" bunch of motion plugin: easymotion vs lightspeed, vs hop
" Plug 'easymotion/vim-easymotion'
Plug 'smoka7/hop.nvim', { 'branch': 'v2' }

" Plug 'ggandor/lightspeed.nvim'

" Float Terminal
Plug 'voldikss/vim-floaterm'

" Lint Plugin
" Plug 'dense-analysis/ale'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'ThePrimeagen/harpoon', {'branch': 'harpoon2'}

" Theme
Plug 'joshdick/onedark.vim'

Plug 'vimwiki/vimwiki'

Plug 'itchyny/calendar.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

if has('nvim')
  " Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  " Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'norcalli/nvim-colorizer.lua'

Plug 'sindrets/diffview.nvim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'nvimdev/dashboard-nvim'
Plug 'nvim-tree/nvim-web-devicons'

call plug#end()
" ************************* End Install Plugin ************************* "
