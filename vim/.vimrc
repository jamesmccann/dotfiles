call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'jonathanfilip/vim-lucius'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

let loaded_netrwPlugin = 1        " skip loading netrw plugin
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set wrap
set autochdir                     " set working directory to target

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set title

set number                          " show number ruler
nmap <leader>ln :set invrelativenumber<cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/vendor/ruby*

" Remove window frames on gui
if has("gui")
  set guioptions-=L
  set guioptions-=r
endif

autocmd FileWritePre * match ErrorMsg '\s\+$' " highlight trailing whitespace

" NERDTree
" ----------------
autocmd VimEnter * silent! lcd %:p:h       " change to current working directory

let NERDTreeMinimalUI=1

map <leader>n :NERDTreeToggle<cr>

" Auto-enter NERDTree in Macvim only
if has("gui_running")
  autocmd VimEnter * NERDTree
  autocmd VimEnter * set winfixwidth
endif

" Quit if only nerdtree left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Colours
" ----------------
set background=dark
set termguicolors
colo lucius

" Toggle background with <leader>bg
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>

" Searching / Navigation
" ---------------
set incsearch
set hlsearch

" Clear search highlights
map <leader>c :nohlsearch<cr>

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" use ag for grep searching
let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
nmap <leader>a :Ack<space>

" Move between buffers with Shift + bracket keys
nnoremap { :bprevious<cr>
nnoremap } :bnext<cr>

" and swap previous buffers with Shift + \
nnoremap <Bar> :b#<cr>

" but skip the quickfix when navigating
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END


" FZF
" ----------------
nmap <leader>t :Files<enter>
imap <c-x><c-l> <plug>(fzf-complete-line)

" Ale
" ----------------
let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'go': ['golint', 'go build'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['goimports'],
\}

" Language: golang
" ----------------
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_fmt_command = "goimports"

" Language: proto
" ----------------
au FileType proto set noexpandtab
au FileType proto set shiftwidth=4
au FileType proto set softtabstop=4
au FileType proto set tabstop=4
