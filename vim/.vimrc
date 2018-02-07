" break compatibility with old Vi editor
set nocompatible

" enable syntax and plugins 
syntax enable
filetype plugin on

" enable 256 color mode
set t_Co=256

" enable dracula color scheme
color dracula

" enable fuzzy search in subdirectories
set path+=**

" show line numbers
set number

" 2 spaces for indentation
set shiftwidth=2

" 2 spaces for tab
set tabstop=2

" enable smart indentation
set smartindent

" set paste mode toggle key
set pastetoggle=<F2>

" higlight matching brackets 
set showmatch

" highlight cursor line
set cursorline

" search and highlight on input
set incsearch

" show hidden files in NerdTree
let NERDTreeShowHidden=1

" disable swap file creation
set noswapfile

" don't show mode 
set noshowmode

" start pathogen
execute pathogen#infect()
call pathogen#helptags()

" setup ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" mappings
map <C-b> :NERDTreeToggle<CR>

" moving between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" move lines up and down in normal, insert, visual modes
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv