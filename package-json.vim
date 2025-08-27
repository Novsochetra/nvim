" ************************* Install Plugin ************************* "
call plug#begin('~/.vim/plugged')
" =====================
" Colors / Themes
" =====================
Plug 'joshdick/onedark.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'

" =====================
" File Explorer / Navigation
" =====================
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'ThePrimeagen/harpoon', {'branch': 'harpoon2'}
Plug 'smoka7/hop.nvim', { 'branch': 'v2' }

" =====================
" Fuzzy Finder / Telescope
" =====================
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-live-grep-args.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" =====================
" LSP / Completion
" =====================
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim', {'branch': 'main'}
Plug 'mason-org/mason-lspconfig.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'stevearc/conform.nvim'

" =====================
" Treesitter / Syntax
" =====================
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'norcalli/nvim-colorizer.lua'

" =====================
" Git / Diff / Version Control
" =====================
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'sindrets/diffview.nvim'

" =====================
" Statusline / UI Enhancements
" =====================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'rcarriga/nvim-notify'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvimdev/dashboard-nvim'
Plug 'folke/noice.nvim'

" =====================
" Markdown / Wiki / Notes
" =====================
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" =====================
" Terminal / Toggleterm
" =====================
Plug 'akinsho/toggleterm.nvim'
call plug#end()
" ************************* End Install Plugin ************************* "
