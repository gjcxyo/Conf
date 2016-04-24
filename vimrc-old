set term=builtin_linux
set ttytype=builtin_linux
colorscheme desert
"syntax on
set tabstop=2
set number
set noswapfile
set nobackup
set wrapscan


scriptencoding utf-8
set nocompatible

if has('vim_starting')
  filetype plugin off
  filetype indent off
  execute 'set runtimepath+=' . expand('~/.vim/bundle/neobundle.vim')
endif
call neobundle#rc(expand('~/.vim/bundle'))

NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

syntax on

filetype plugin on
filetype indent on

" SSH クライアントの設定によってはマウスが使える（putty だと最初からいける）
set mouse=a

set visualbell t_vb=
set noerrorbells
set visualbell
set cursorline
set cursorcolumn
set laststatus=2
set cmdheight=2
set showmatch
set helpheight=999
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

