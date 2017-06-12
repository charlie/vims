
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim " for NeoVim
call vundle#rc("~/.vim/bundle") " for NeoVim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-commentary'
Plugin 'freeo/vim-kalisi'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'tpope/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
"Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}



call vundle#end()
filetype plugin indent on

" Basic vim
syntax on
set mouse=r
" set mousehide
scriptencoding utf-8
set shortmess+=filmnrxoOtT
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore
set history=2500
set showmode
set backspace=indent,eol,start
set linespace=0
set showmatch
set nolist
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set wildmenu
set ignorecase
set smartcase
set hlsearch
set nowrap
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set nojoinspaces
set splitright
set splitbelow
set laststatus=2

set formatoptions-=cro
setlocal fo+=aw "Fix ugly line breaks http://wcm1.web.rice.edu/mutt-tips.html

" Color scheme
colorscheme darkburn
" let g:molokai_original = 1

set background=dark
highlight NonText ctermfg=bg guifg=bg
highlight Normal ctermbg=NONE

set t_Co=256

" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

" jcl files
autocmd BufNewFile,BufRead {*.jcl,*.[jJ][cC]@.[tT][xT][tT],*.[pP][pP]@.[tT][xX][tT]} set ft=jcl
