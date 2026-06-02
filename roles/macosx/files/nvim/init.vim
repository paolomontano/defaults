if empty(glob(stdpath('data') . '/site/autoload/plug.vim'))
  silent execute '!curl -fLo ' . shellescape(stdpath('data') . '/site/autoload/plug.vim') . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let mapleader = " "

call plug#begin(stdpath('data') . '/plugged')

" Utility
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'vifm/vifm.vim'
Plug 'ap/vim-css-color'
Plug 'frazrepo/vim-rainbow'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

call plug#end()

"""" basic behaviour
set autoread
set completeopt=noinsert,menuone,noselect
set cursorline
set encoding=utf-8
set fileformat=unix
set laststatus=2
set lazyredraw
set noswapfile
set novisualbell
set number
set ruler
set showmatch
set wildmenu
set nowrap
set termguicolors

"""" tab settings
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4

"""" fold behaviour
set foldcolumn=1
set foldenable

"""" search settings
set history=2048
set hlsearch
set incsearch

"""" appearance
set colorcolumn=80,120
set cmdheight=2
set noerrorbells
set showcmd
set title

silent! colorscheme bubblegum-256-light
syntax on

"""" plugin configurations
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ }
let g:rainbow_active = 1
let NERDTreeShowHidden = 1

lua << EOF
local ok, telescope = pcall(require, 'telescope')
if ok then
  telescope.setup({
    defaults = {
      prompt_prefix = '> ',
      selection_caret = '> ',
    },
  })
end
EOF

"""" keyboard shortcuts
nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

nnoremap <C-l><C-l> :set relativenumber!<CR>
map <silent> <C-k><C-k> :NERDTreeToggle<CR>
map <silent> <C-k><C-l> :colorscheme bubblegum-256-light<CR>
map <silent> <C-k><C-j> :colorscheme bubblegum-256-dark<CR>
