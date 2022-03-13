if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'cohama/lexima.vim'
Plug 'sheerun/vim-polyglot'

Plug 'joshdick/onedark.vim'
Plug 'sheerun/lightline.vim'
Plug 'edkolev/tmuxline.vim'

if has("nvim")
  " nvim specific plugins
endif

call plug#end()
