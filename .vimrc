filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
syntax on

set ruler  " Ruler on

" Indentation
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" Backspace
set bs=2

map <S-Tab> :NERDTreeToggle<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map ,p "+gp

colorscheme railscasts
