" disable detect file types automatically
" necessary on some Linux distros for pathogen to properly load bundles
filetype off

set nocompatible " no vi compatibility

" load ftplugins and indent files
filetype plugin on
filetype indent on

syntax on " syntax highlighting

" to prevents some security exploits:
" http://lists.alioth.debian.org/pipermail/pkg-vim-maintainers/2007-June/004020.html
set modelines=0

" indentation
" use whitespace softtabstop should = shiftwidth
" use tab softtabstop should = tabstop
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " tabs are converted to spaces.

set encoding=utf-8
set scrolloff=3 " keep 3 lines when scrolling
set autoindent " always set autoindentaion on
set showmode " show vim mode (VISUAL, SELECT, INSERT, etc)
set showcmd " display incomplete commands
set visualbell t_vb= " turn off error beep/flash
set novisualbell " turn off visual bell
set cursorline " highlight the current line
set ttyfast " indicates a fast terminal connection. Improves smoothness.
set ruler " show the cursor position all the time
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set laststatus=2 " always show the status line (0 = never, 1 = (default) only if there are two or more windows, 2 = always)

" changes Vim’s line number column to display how far away each line is from the current one,
" instead of showing the absolute line number. Only on Vim >= 7.3
" set relativenumber 

set wildmenu " enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest " make cmdline tab completion similar to bash

let mapleader = "," " change the <leader> key

" Vim’s horribly broken default regex “handling” 
" by automatically inserting a \v before any 
" string you search for.
" This turns off Vim’s crazy default regex characters
" and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v

" deal with case-sensitive when searching
set ignorecase
set smartcase

" applies substitutions globally on lines.
" For example, instead of :%s/foo/bar/g you just type :%s/foo/bar/
set gdefault

set incsearch " do incremental searching
set showmatch " highlights the matching braces|brackets|parens when the cursor is on a bracket.
set hlsearch " highlight searches

" clear out a search
nnoremap <LEADER><SPACE> :let @/=''<CR>

set wrap linebreak nolist " line wrap

" know where you are
set number
set showbreak=...

map <S-Tab> :NERDTreeToggle<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map <LEADER>p "+gp

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  colorscheme railscasts
endif
