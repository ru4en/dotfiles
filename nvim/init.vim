set mouse=v

set hlsearch

set relativenumber                

set wildmode=longest,list   

let g:python3_host_prog = '/home/ru4en/miniconda3/bin/python3'

syntax on

set mouse+=a

set clipboard=unnamedplus

filetype plugin on

set spell

call plug#begin('~/.config/nvim/plugged/')
	Plug 'dracula/vim'
 	Plug 'ryanoasis/vim-devicons'
	Plug 'SirVer/ultisnips'
 	Plug 'scrooloose/nerdtree'
 	Plug 'preservim/nerdcommenter'
 	Plug 'mhinz/vim-startify'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'kassio/neoterm'
        Plug 'feline-nvim/feline.nvim'
	Plug 'ThePrimeagen/git-worktree.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

set termguicolors

" status bar

lua require('feline').setup()
lua require('feline').winbar.setup()
lua require("nvim-web-devicons").refresh()
:source toggleterm-config.lua

" term thing ======================================

lua require("toggleterm").setup()

nnoremap <silent> <C-s> :ToggleTerm siz=10<CR>
nnoremap <silent> <C-f> :ToggleTerm direction=float<CR>

" NERD TREE ========================================

nnoremap <silent> <C-t> :NERDTreeToggle<CR>

" TAB stuff ========================================

" Move to previous/next
nnoremap <silent>    <C-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <C-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <C-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <C-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <C-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <C-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <C-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <C-4> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <C-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <C-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <C-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <C-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <C-p> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <C-c> <Cmd>BufferClose<CR>

