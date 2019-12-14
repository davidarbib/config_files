" --- reperage ---
set nu
set rnu
set ruler
set colorcolumn=81

" --- indentation ---
set autoindent
set tabstop=4
syntax on
set mouse=a
set clipboard=unnamedplus

" --- search ---
set hlsearch
set incsearch
set ignorecase
set smartcase
set path+=$PWD/**

"set foldmethod=indent

set wildmenu
set tags=~/printf/tags

" --- themes ---
set t_Co=256
"colorscheme wasabi256
"colorscheme dark-ruby
colorscheme triplejelly
"colorscheme colorful256
"colorscheme desert256
"colorscheme desert256v2
"colorscheme seoul256
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
nmap H <C-W>h 
nmap L <C-W>l

"--- word search ----

"nnoremap * * :nohlsearch<CR>

"--- matching parenthesis ---
hi MatchParen ctermbg=brown ctermfg=black


