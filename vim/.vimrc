" break compatibility with old Vi editor
set nocompatible

" enable syntax and plugins 
syntax enable
filetype plugin on

" enable fuzzy search in subdirectories
set path+=**

" show line numbers
set number

" highlight cursor line
set cursorline

" start pathogen
execute pathogen#infect()
call pathogen#helptags()

" mappings
map <C-b> :NERDTreeToggle<CR>