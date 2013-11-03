" disable detect file types automatically
" necessary on some Linux distros for pathogen to properly load bundles
filetype off

set nocompatible " no vi compatibility

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'godlygeek/csapprox'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'
Bundle 'edsono/vim-matchit'
Bundle 'Raimondi/delimitMate'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'depuracao/vim-rdoc'

" Bundle colors
Bundle 'Colour-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'

" load ftplugins and indent files
filetype plugin indent on

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

let mapleader = "," " change the <Leader> key

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
nnoremap <Leader><Space> :let @/=''<CR>

set wrap linebreak nolist " line wrap

" know where you are
"set number
set showbreak=...

" toggle NERDTree
map <S-Tab> :NERDTreeToggle<CR>

" window navigation
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" cut to clipboard, block with Ctrl+v or Shift-v first
map <Leader>c "+c

" copy to clipboard, block with Ctrl+v or Shift-v first
map <Leader>y "+y

" paste from clipboard
map <Leader>p "+gp 

" select all
map <Leader>a ggVG

" open fuzzy finder file
map <C-T> :FuzzyFinderFile<CR>

if has('gui') || has("gui_running")
  " IMPORTANT: Uncomment one of the following lines to force
  " using 256 colors (or 88 colors) if your terminal supports it,
  " but does not automatically use 256 colors by default.
  set t_Co=256 "tell the term has 256 colors
  "set t_Co=88
  "let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

  colorscheme railscasts
else
  let g:CSApprox_loaded = 0 " disable CSApprox when has no gui
  set background=dark
  colorscheme solarized
endif
