set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set rtp+=~/.vim/plugins/**
set rtp+=~/.fzf

call vundle#begin('~/.vim/plugins')
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flrnprz/plastic.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'christoomey/vim-system-copy'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:netrw_liststyle = 3
let g:netrw_banner = 0

set noshowmode
set laststatus=2
	" --- reperage ---
set nu
set rnu
"set ruler
set colorcolumn=81

" --- indentation ---
set autoindent
set tabstop=4
syntax on
set mouse=a

" --- clipboad cross platform ---
set clipboard^=unnamedplus,unnamed

" --- search ---
set hlsearch
set incsearch
set ignorecase
set smartcase
set path+=**

"set foldmethod=indent

set wildmenu
set tags=~/miniRT/tags

" --- themes ---
set t_Co=256

"let g:PaperColor_Theme_Options = {
"\   'theme': {
"\     	'default.light': {
"\       	'transparent_background': 1
"\     	},
"\   'language': {
"\   	'c': {
"\			'highlight_builtins' : 1
"\		}
"\   }
"\ }
"\}
"set termguicolors
set background=dark
colorscheme plastic

"colorscheme PaperColor
"colorscheme wasabi256
"colorscheme dark-ruby
"colorscheme triplejelly
"colorscheme colorful256
"colorscheme desert256
"colorscheme desert256v2
"colorscheme seoul256
"colorscheme seoul256-light
"colorscheme babymate256
"colorscheme tigrana-256-dark
"colorscheme oceanblack256
"colorscheme lapis256
"colorscheme zenburn
"colorscheme tigrana-256-dark

"--- tab autocompletion ---
"nmap <Tab> <C-P> todo other

"--- redo ---
nmap U <C-R> 

"--- split navigation ---
nmap <Space> <Nop>
nmap <Space>k <C-W>k
nmap <Space>j <C-W>j
nmap <Space>h <C-W>h
nmap <Space>l <C-W>l

"--- word search ----

"nnoremap * * :nohlsearch<CR>

"--- matching parenthesis ---
hi MatchParen ctermbg=brown ctermfg=black

"--- autocompletion ---
set complete=.,w,b,u,t
