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
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajmwagar/vim-deus'


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
"-------------------------------------
" air-line
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#tabline#enabled = 1
 "let g:airline#extensions#tabline#left_sep = ' '

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

     " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'

     " airline symbols
     let g:airline_left_sep = ''
     let g:airline_left_alt_sep = ''
     let g:airline_right_sep = ''
     let g:airline_right_alt_sep = ''
     let g:airline_symbols.branch = ''
     let g:airline_symbols.readonly = ''
     let g:airline_symbols.linenr = ''
"-------------------------------------
"
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
set shiftwidth=4
set noexpandtab
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
set tags=~/minishell/tags

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
let g:airline_powerline_fonts = 1
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
"colorscheme plastic

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
nnoremap U <C-R>

"--- split navigation ---
nnoremap <Space> <Nop>
nnoremap <Space> <C-W>

"--- word search ----

"nnoremap * * :nohlsearch<CR>

"--- matching parenthesis ---
hi MatchParen ctermbg=brown ctermfg=black

"--- autocompletion ---
set complete=.,w,b,u,t

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags
let g:ycm_bal_ycm_extra_conf = '~/.ycm_extra_conf.py'

" ----learn vimscript the hard way tutorial---
echo ">^.^<"
echo "test123"
let mapleader = "\\"
let maplocalleader = "H"
noremap <Leader>d ddp
" Ctrl-u for uppercase word in insert and normal mode
inoremap <c-u> <esc>viw Ui
nnoremap <c-u> viw U<esc>
" vimrc editing and sourcing
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
" block creation
nnoremap <leader>bl o{<cr>}<esc>
" fast signature
iabbrev @@ davidarbib@yahoo.fr
iabbrev ssig --<cr>David Arbib<cr>davidarbib@yahoo.fr 
" fast preproc 
iabbrev iss #include <><esc>
iabbrev iuu #include ""<esc>
iabbrev dff #define
iabbrev indd #ifndef
iabbrev endd #endif
" fast keyword
iabbrev wihle while
iabbrev retrun return
iabbrev iff if ()<cr>{<cr>}<esc>kkf(
iabbrev elsee else<cr>{<cr>}<esc>k
iabbrev elseif else if ()<cr>{<cr>}<esc>kkf(
iabbrev whilee while ()<cr>{<cr>}<esc>kkf(
iabbrev wihlee while ()<cr>{<cr>}<esc>kkf(
iabbrev forr for (;;)<cr>{<cr>}<esc>kkf(
iabbrev class class <cr>{<cr>};<esc>kkfsfs

inoremap jk <esc>
nnoremap <leader>q <c-z>
inoremap qjk <esc><c-z>

" -------------ALE config-----------------
let g:ale_linters = {
\   'javascript': ['eslint'],
\	'c': ['clangd'],
\}
let g:airline#extensions#ale#enabled = 1
let g:ale_set_balloons = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" let g:ale_c_parse_compile_commands = 1
let g:ale_c_clang_executable = 'clang'
"let g:ale_c_clang_options = '-std=c99 -Wall -Wextra -Werror -Iincludes -Ilibft/includes'
" ----------------------------------------
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
" ----------------------------------------
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

fun! Genclass(classname)
	let l:text = ["#ifndef " . toupper(a:classname). "_HPP"]
	:call add(l:text, "# define ". toupper(a:classname) . "_HPP")
	:call add(l:text, "")
	:call add(l:text, "# include <string>")
	:call add(l:text, "# include <iostream>")
	:call add(l:text, "")
	:call add(l:text, "Class ". a:classname)
	:call add(l:text, "{")
	:call add(l:text, "\tpublic:")
	:call add(l:text, "\t\t" . a:classname . "(void);")
	:call add(l:text, "\t\t" . a:classname . "(" . a:classname. " const &src);")
	:call add(l:text, "\t\t~" . a:classname . "(void);")
	:call add(l:text, "\t\t" . a:classname . "\t&operator=(const " . a:classname . " &rhs);")
	:call add(l:text, "\tprivate:")
	:call add(l:text, "};")
	:call add(l:text, "#endif")
	:call writefile(l:text, a:classname . ".hpp")
	let l:textcpp = ["#include \"" . a:classname . ".hpp\""]
	:call add(l:textcpp, "")
	:call add(l:textcpp, a:classname . "::" . a:classname . "(void):")
	:call add(l:textcpp, "{")
	:call add(l:textcpp, "}")
	:call add(l:textcpp, "")
	:call add(l:textcpp, a:classname . "::" . a:classname . "(" . a:classname . " const &src)")
	:call add(l:textcpp, "{")
	:call add(l:textcpp, "}")
	:call add(l:textcpp, "")
	:call add(l:textcpp, a:classname . "::~" . a:classname . "(void)")
	:call add(l:textcpp, "{")
	:call add(l:textcpp, "}")
	:call add(l:textcpp, "")
	:call add(l:textcpp, a:classname . "::" . a:classname . "\t&operator=(const ".  a:classname . " &rhs)")
	:call add(l:textcpp, "{")
	:call add(l:textcpp, "}")
	:call add(l:textcpp, "")
	:call writefile(l:textcpp, a:classname . ".cpp")
endfun
source /usr/share/vim/vim80/plugin/stdheader.vim
