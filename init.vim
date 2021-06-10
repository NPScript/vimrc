call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'NPScript/scc'

call plug#end()

set laststatus=2
let g:airline_powerline_fonts = 1

" Shell

set shell=/usr/bin/zsh

" Theme
set conceallevel=2
syntax on

colorscheme n8
let g:airline_theme = "n8"

" Mouse

set mouse=a
if !has('nvim')
	set ttymouse=sgr
endif

" Content
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set list lcs=tab:> ,eol:¬,trail:·,nbsp:•
set splitright
set nosplitbelow

" UI
let mapleader=","
set number
set showcmd
filetype indent on
set wildmenu
set hlsearch

" Map Keys
map <F2> :Lexplore<CR>
map <F9> :G<CR><C-w>L
map <F7> <leader>c<Space>

map <C-n> <C-w>n
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k

map <F10> :so $MYVIMRC<CR>
map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>Tn :tnext<CR>
map <leader>Tp :tprevious<CR>
map <leader>Tf :tfirst<CR>
map <leader>Tl :tlast<CR>
map <leader>Ts :tselect<Space>
map <leader>Tc :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extras=+q .<CR><CR>
map <C-i> gt

inoremap ( ()<ESC>i
inoremap ) <ESC>:call brackify#putbracket(')')<CR>la
inoremap [ []<ESC>i
inoremap ] <ESC>:call brackify#putbracket(']')<CR>la
inoremap { {}<ESC>i
inoremap } <ESC>:call brackify#putbracket('}')<CR>la

inoremap " <ESC>:call brackify#putquotes('"')<CR>a
inoremap ' <ESC>:call brackify#putquotes("'")<CR>a

autocmd Filetype html inoremap <buffer> < <><ESC>i
autocmd Filetype html inoremap <buffer> > <ESC>:call brackify#putbracket('>')<CR>la

vnoremap ( di(<ESC>pa)
vnoremap { di{<ESC>pa}
vnoremap [ di[<ESC>pa]
vnoremap " di"<ESC>pa"
vnoremap ' di'<ESC>pa'

tnoremap <ESC>q <C-D>

" C++ Config

autocmd FileType cpp inoremap <buffer> <F12> std::cout <<  << '\n';<Esc>8hi
autocmd FileType c inoremap <buffer> <F12> fprintf(stderr, "\n");<Esc>4hi
autocmd FileType cpp nnoremap <buffer> <F5> :!make run<CR>

set nocp
filetype plugin on

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Language

set spelllang=de_ch

set autoindent smartindent
set clipboard+=unnamedplus

" PATH

set path+=**

" Tags

set tags+=~/.local/share/nvim/site/tags/cpp


" Netrw

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browser_split = 2
map <leader>t :Lexplore<CR>
nnoremap <leader>d :Lexplore %:p:h<CR>
let g:netrw_keepdir = 1
let g:netrw_winsize = 30
autocmd FileType netrw setlocal nolist
