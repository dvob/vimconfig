" plugins
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'jacoborus/tender.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'ziglang/zig.vim'

call plug#end()


" basic settings
set number
set relativenumber
set nowrap
set clipboard=unnamedplus
set iskeyword+=-


" colors
set termguicolors
colorscheme tender


" key bindings
let mapleader = ","

nnoremap <leader>b :GoBuild<CR>
nnoremap <leader>t :GoTest<CR>
nnoremap <leader>e :Lexplore<CR>

nmap <C-n> :cnext<CR>
nmap <C-p> :cprevious<CR>

" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" imap <C-j> <Esc>



" load other configurations
lua << EOF
require "user.lsp"
EOF
