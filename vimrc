"############ VUNDLE CONFIG BEGIN #########
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'elzr/vim-json'
Bundle 'groovy.vim'

filetype plugin indent on
"############# VUNDLE CONFIG END ##########

syntax enable
set background=light
set guifont=Menlo\ Regular:h17
colorscheme solarized

set number
set ruler
set wildmenu
set laststatus=2
set ts=4 sts=4 sw=4 expandtab

nmap <Tab> >>
nmap <BS> <<
vmap <Tab> >gv
vmap <BS> <gv

au BufRead,BufNewFile Vagrantfile  set filetype=ruby
au BufRead,BufNewFile *.groovy  set filetype=groovy
au BufRead,BufNewFile *.gradle set filetype=groovy
