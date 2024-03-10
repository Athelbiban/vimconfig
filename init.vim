"Табы и пробелы set expandtab
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
let mapleader = " "
nmap <leader>w :w!<CR>
"map <space> /
"map <C-space> ?
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>ss :setlocal spell!<CR>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
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
"Выключить подсветку: повесить на горячую клавишу F8
"nnoremap <F8> :nohlsearch<CR>
":map <F8> <Esc>:nohlsearch<CR>
nnoremap <silent><F8> :noh<CR>

"При перемещении вверх и вниз центровать курсор на середине экрана
"nnoremap <C-d> <C-d>zz
"nnoremap <C-u> <C-u>zz

"При перемещении по поиску цетровать курсор на середине экрана
"nnoremap n nzz
"nnoremap N Nzz

"Плагины
call plug#begin()
Plug 'preservim/NERDTree'
"Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
call plug#end()

"Перемещение по визуальным линиям, а не по логичиским
nmap j gj
nmap k gk

"Перемещение от начала строки к концу
nmap H ^
nmap L $

"Выход из режима вставки на русской раскладке Ctrl-х
imap <C-х> <Esc>

"Выход из vim с сохранением и без на русской раскладке
nmap ЯЯ ZZ
nmap ЯЙ ZQ

"Курсор всегда в центре экрана
"set so=999
"Подсветка строки, на которой находиться курсор
set cursorline
set nostartofline
hi CursorLine cterm=underline

"set keymap=russian-jcukenwin

"Удалить пустые строки на Shift-F1
nnoremap <S-F1> :g/^$/d<CR>

"Системный буфер обмена на Shift - Y / P
noremap <S-Y> "+y

"Перечитать .vimrc / init
noremap <F4> :source ~/.config/nvim/init.vim<CR>
"Открыть init.vim через Shift + <F4>
noremap <F6> :edit ~/.config/nvim/init.vim<CR>
"Включ. и отключ. показа сторок обычных и релативных на <F5>
nnoremap  <silent> <F5> :exec &nu==&rnu? "se nu!" : "se rnu!"<cr>
"Проверка орфографии для русского и английского языков (чет пока не работает)
nnoremap <silent> <F11> :set spell!<CR>
inoremap <silent> <F11> <C-O> :set spell!<CR>

"Сохранение Ctrl + s
inoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>

"Горячие клавиши для телескопа (<leader> это `,`)
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nmap <leader>аа <leader>ff
nmap <leader>ап <leader>fg

" Прокрутить лист курсором
nmap яя zz
nmap яи zb
nmap яе zt

"Перемещение в начало файла на русской раскладке
nmap gп gg

"Скопировать весь текст в буфер Ctrl+a
nmap <c-a> :%y+<cr>

"Ассоциация русских и латинских символов
"для навигации и команд в любой раскладке
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

