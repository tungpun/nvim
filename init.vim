" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

" LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Language support things
Plug 'othree/html5.vim'

Plug 'airblade/vim-gitgutter'

" Fancy UI stuff
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/denite.nvim'
Plug 'raghur/fruzzy', {'do': { -> fruzzy#install()}}
Plug 'tyrannicaltoucan/vim-quantum'

Plug 'liuchengxu/vista.vim'
Plug 'severin-lemaignan/vim-minimap'


" syntax check
Plug 'w0rp/ale'
" Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
" Formater
Plug 'Chiel92/vim-autoformat'

call plug#end()


" UI Configuration
"
set background=dark
let g:quantum_italics=1
colorscheme quantum

syntax on
syntax enable


set nu
set nowb
set nowb
set autoread
set autowrite
set autoindent
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set pastetoggle=<F3>
set encoding=UTF-8
set mouse=a " enable mouse for all mode
set cursorline

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeShowHidden=1

" Press Ctrl + O to jump to a symbol
nnoremap <D-b> :CocList outline<CR>

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif

if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif


" Tab things
set tabstop=2 shiftwidth=2 expandtab
retab
