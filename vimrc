"                         __  __     __     ___
"                        |  \/  |_   \ \   / (_)_ __ ___  _ __ ___
"========================| |\/| | | | \ \ / /| | '_ ` _ \| '__/ __|========================
"========================| |  | | |_| |\ V / | | | | | | | | | (__ ========================
"========================|_|  |_|\__, | \_/  |_|_| |_| |_|_|  \___|========================
"                                |___/

let &t_ut=''
let mapleader=" "
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_SI = "\<Esc>]50;CursorShape=0\x7"

"设置项
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:>\ ,trail:→
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set autochdir
set laststatus=2
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"其他设置
set nocompatible
set encoding=utf-8

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

exec "nohlsearch"

noremap k j
noremap j h
noremap h i
noremap H I
noremap i k
noremap - Nzz
noremap = nzz
noremap <LEADER><CR> :nohlsearch<CR>

"软件安装
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'  "状态栏组件
Plug 'connorholyday/vim-snazzy'  "配色组件

Plug 'Valloric/YouCompleteMe'  "代码补全插件

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }   "文件树插件
Plug 'Xuyuanp/nerdtree-git-plugin'

" Error checking
Plug 'w0rp/ale'

" Python
Plug 'vim-scripts/indentpython.vim'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

call plug#end()
"PlugInstall  "安装组件

"组件应用命令
color koehler
let g:SnazzyTransparent = 1

"分屏
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

"屏幕间光标跳转
map <LEADER>e <C-w><up>
map <LEADER>d <C-w><down>
map <LEADER>s <C-w><left>
map <LEADER>f <C-w><right>

"改变分屏大小

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize +5<CR>
map <right> :vertical resize -5<CR>

"横竖分屏切换
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

"标签操作
map nt :tabe<CR>   "创建table
map <LEADER>- :-tabnext<CR>   "切换至前面一个
map <LEADER>= :+tabnext<CR>   "切换至后面一个

"基本操作
map S :w<CR>
map s <nop>
map R :source $MYVIMRC<CR>
map Q :q<CR>
map <LEADER>c :set spell!<CR>
map <LEADER>h <Esc>ea<C-x>s

"高级配置
map <LEADER><LEADER> <Esc>/<++><CR>:nohl<CR>c4l
map tx : ! figlet

"文件树快捷键
map tt :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "O"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = "h"
let NERDTreeMapActivateNode = "l"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = "p"
let NERDTreeMapCloseDir = ""
let NERDTreeMapChangeRoot = "y"

