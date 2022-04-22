set nocompatible
filetype off

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set directory^=$HOME/.config/tmp//
set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'https://github.com/wesQ3/vim-windowswap'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ryanoasis/vim-devicons'

" markdown:
" Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

colorscheme gruvbox
" toggle file explorer
nmap <C-n> :NERDTreeToggle<CR>

" find files ctrl+f exit with esc
map <silent> <C-f> :Files<CR>  

"save file bound to ctrl+s (might break something else idk)
map <silent> <C-s> :w<CR>

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>:q!<CR>

set colorcolumn=80
set background=dark
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells

let g:python3_host_prog = "/usr/bin/python3"

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"the coc ZONE
let g:coc_global_extensions = [
	\'coc-snippets',
	\'coc-pairs',
	\'coc-tsserver',
	\'coc-eslint',
	\'coc-prettier',
	\'coc-json',
	\]

" markdown ZONE
let g:mkdp_refresh_slow=1
" let g:vim_markdown_folding_disabled = 1
