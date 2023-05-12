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
"nnoremap <F8> :nohlsearch<CR>
:map <F8> <Esc>:nohlsearch<CR>

"При перемещении вверх и вниз центровать курсор на середине экрана
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"При перемещении по поиску цетровать курсор на середине экрана
nnoremap n nzz
nnoremap N Nzz

"Плагины
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

imap jj <Esc>
" imap оо <Esc> почему-то тормозит буква 'о'

map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map ё `
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Ё ~
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
