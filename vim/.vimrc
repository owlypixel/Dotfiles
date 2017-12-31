" break compatibility with old Vi editor
set nocompatible

" enable syntax and plugins 
syntax enable
filetype plugin on

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

" higlight matching brackets 
set showmatch

" highlight cursor line
set cursorline

" show hidden files in NerdTree
let NERDTreeShowHidden=1

" disable swap file creation
set noswapfile

" start pathogen
execute pathogen#infect()
call pathogen#helptags()

" setup ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" mappings
map <C-b> :NERDTreeToggle<CR>