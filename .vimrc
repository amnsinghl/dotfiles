set nocompatible              " be iMproved, required
set backspace=2
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'myusuf3/numbers.vim'
Plugin 'jreybert/vimagit'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"filetype plugin on " To ignore plugin indent changes, instead use

" Non plugin stuff begins here

" relative/absolute toggle function end
nnoremap <F3> :NumbersToggle<CR> " toggle relative absolute nummber mode
" nnoremap <F4> :NumbersOnOff<CR> " turns off the line number in relative mode
				  " not so useful

filetype plugin on
syntax on
			
