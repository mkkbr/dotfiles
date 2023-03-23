call plug#begin('~/.vim/plugged')
Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
" airline is a better status line and a tab-bar for nvim.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
call plug#end()

filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
let g:CommandTPreferredImplementation='lua'

set termguicolors

set smarttab

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set smartcase               " unless query has capital letters.
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

set number                  " add line numbers
set relativenumber
set ruler                   " curser line and column
"set wildmode=longest,list   " get bash-like tab completions
" Path/file expansion in colon-mode.

set modeline
set linespace=0
set nojoinspaces

set splitbelow
set splitright

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.


" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
" highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" match ExtraWhitespace /\s\+$\|\t/
"       

syntax on                   " syntax highlighting
set mouse=a                 " Mousesupport
set bg=dark


" move split panes to left/bottom/top/right
nnoremap <A-LEFT> <C-W>H
nnoremap <A-DOWN> <C-W>J
nnoremap <A-UP> <C-W>K
nnoremap <A-RIGHT> <C-W>L
" move between panes to left/bottom/top/right
nnoremap <C-LEFT> <C-w>h
nnoremap <C-DOWN> <C-w>j
nnoremap <C-UP> <C-w>k
nnoremap <C-RIGHT> <C-w>l


