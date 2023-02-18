"Табы и пробелы
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Нумерация строк и отступ
set number
set relativenumber
set foldcolumn=2

"Цветовая схема
"set t_Co=256 
set termguicolors
colorscheme sublimemonokai
syntax on
let g:sublimemonokai_term_italic = 1

"Без звука
set noerrorbells
set novisualbell

"Мышь
set mouse=a

"Привязки
let mapleader = ","
nmap <leader>w :w!<CR>
map <space> /
map <C-space> ?
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>ss :setlocal spell!<CR>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
nmap <F3> :NERDTreeToggle<CR>

"Поиск
set ignorecase
set smartcase
set hlsearch
set incsearch

"Выход с sudo
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

"Кодировка
set encoding=utf-8
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"Тип переноса строк
set ffs=unix,dos,mac

"По звездочке не прыгать на следующее найденное, а просто подсветить
nnoremap * *N
"Выключить подсветку: повесить на горячую клавишу Ctrl-F8
nnoremap <C-F8> :nohlsearch<CR>

"Плагины
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
