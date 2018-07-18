set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" note: you must have installed Vundle beforehand:
" https://github.com/VundleVim/Vundle.vim#quick-start

" PLUGINS "
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('$HOME/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'valloric/youcompleteme'

" Language-specific
" Syntax Highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'pprovost/vim-ps1'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" FORMATTING "
set tabstop=2 " 2 spaces. If you want 4, then just double tap dat. If you want tabs, then:
set shiftwidth=2 " What is seen as an indent
set expandtab " insert space chars when <Tab> is pressed. If you want a tab, Ctrl-V<Tab>

" KEYMAPPINGS "
" All modes
map <F7> mzgg=G`z " Reformat entire file
map <C-n> :NERDTreeToggle<CR> " CTRL-N opens NERDTree
set backspace=indent,eol,start " Vim was acting weird on windows. http://vim.wikia.com/wiki/Backspace_and_delete_problems
" Insert mode
:imap jk <Esc> " jk quickly goes to visual mode
:imap JK <Esc> " caps-lock isn't an issue

" VISUAL "
set number " line numbers

" NERDTREE "
" Auto open if vim starts up with no files specified or opened in a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close vim if NERDTree is the only window left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1 " Show hidden files

" LANGUAGE-SPECIFIC "
" Javascript
let g:javascript_plugin_jsdoc = 1 " Enable syntax highlighting for JSDoc
" Typescript
"let g:typescript_indent_disable = 1
" -- React

