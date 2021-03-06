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

" set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
" set list
" disable because can't copy content

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
" set mouse=a " set to enable mouse for all mode
set cursorline

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeShowHidden=1

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


let mapleader=" "
nnoremap <Leader>w :w<CR>
nnoremap <Leader>l :vsplit<CR>
nnoremap <Leader>k :split<CR>
nnoremap <Leader>wh :wincmd h<CR>
nnoremap <leader>wl :wincmd l<cr>
nnoremap <leader>wk :wincmd k<cr>
nnoremap <leader>wj :wincmd j<cr>
nnoremap <leader>w= :wincmd =<cr>
nnoremap <leader>e :quickrunexecute<cr>
nnoremap <leader>wb :e#<cr>
nnoremap <leader>qq :bd<cr>
nnoremap <leader>ss :mksession! .work<cr>
nnoremap <leader>sr :so .work<cr>
nnoremap <leader><leader>r :so ~/.config/nvim/init.vim<cr>
nnoremap <leader>n :nerdtree<cr>
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader><Leader>o :Vista coc<CR>
"Buffer
nnoremap <Leader>tn :tabn<CR>
nnoremap <Leader>tp :tabp<CR>
nnoremap <Leader>tc :tabe<CR>
nnoremap <Leader>tx :tabclose<CR>
" Git
nnoremap <Leader>ggn :GitGutterNextHunk<CR>
nnoremap <Leader>ggp :GitGutterPrevHunk<CR>


" Press Ctrl + O to jump to a symbol
nnoremap <Leader>b :CocList outline<CR>

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


"Copy things
set clipboard+=unnamedplus

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
