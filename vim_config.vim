" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2016 Jul 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" My preferences
set undodir=$VIMPREFS/undo	    " set the backup home directory
set undofile 				            " save undo's after file closes
set undolevels=1000			        " how many undo's
set undoreload=10000			      " number of lines to save for undo
set backupdir=$VIMPREFS/backup
set clipboard=unnamed           " Use the system clipboard for copy/paste
set tabstop=2
set shiftwidth=4
set expandtab

set number				              " Add line numbers 
set linebreak                   " line break between words

set fileformats=unix,dos

" Set the fold method
set foldmethod=indent
set foldnestmax=1

" Settings for fuzzy finder
set wildmenu
" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

" Set the working directory to wherever the open file lives
set autochdir

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMPREFS/defaults.vim

if has("vms")
  set nobackup		              " do not keep a backup file, use versions instead

endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif

call plug#begin()

Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'elmcast/elm-vim'

call plug#end()
