" VUNDLE #######################################################
" https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ##############################################################

" VIM-MARKDOWN #################################################
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 2 " why does this not conceal URLs?
" ##############################################################

" JUMP TO END/START OF LINE, INSERT MODE #######################
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
" ##############################################################

" YANK TO OSX CLIPBOARD ########################################
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
" #############################################################

" LITTLE STUFF ################################################
set number " show line numbers by default

