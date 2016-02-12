" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
"set cursorcolumn
"set cursorline

" Don't use Ex mode, use Q for formatting
map Q gq

" In an xterm the mouse should work quite well, thus enable it.
set mouse=a


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis


" My edits to .vimrc
set number

set expandtab
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:··,trail:⌖,extends:>,precedes:<,nbsp:+
" set listchars=tab:▸\ ,trail:·
set spelllang=en
set spellfile=$HOME/spell/en.utf-8.add

" Abbreviations
iab starttex \documentclass{article}<CR>\usepackage{graphicx}<CR>\usepackage{float}<CR>]usepackage{indentfirst}<CR><CR>\begin{document}<CR>\title{class - HW# - Name}<CR>\author{Binam Kayastha}<CR>\date{\today}<CR>\maketitle<CR>\end{document}
iab s \section
iab ss \subsection
iab sss \subsubsection
iab ssss \subsubsubsection
iab tblbox \begin{center}<CR>\begin{tabular}{\|c\|}<CR>\hline<CR>data\\ <CR>\hline<CR>\end{tabular}<CR>\end{center}
