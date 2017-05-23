" Description: This is my attempt at building a useful .vimrc from scratch.
"              My plan is to start off with just a few basic settings, then
"              add as needed. Everything that I have read says not to just
"              blindly copy stuff from the web. Know what is in your .vimrc
"
" This .vimrc will be setup with specific sections
"
" ***** General Settings *****
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
set nocompatible
 
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
" ***** Must have options *****
"
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
"  ***** Usability options *****
"
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
set autoindent
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Highlight current line
set cursorline

" Highlight matching ({[]})
set showmatch

" ***** Indentation options *****
"
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
" Use one of my favorite color schemes
colorscheme desert256

" Pathogen plugin manager
execute pathogen#infect()
