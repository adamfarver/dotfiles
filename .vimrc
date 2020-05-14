" Setup VIM Plug
if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
	Plug 'junegunn/vim-easy-align'
	Plug 'https://github.com/junegunn/vim-plug'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plug 'jiangmiao/auto-pairs' 
	Plug 'dense-analysis/ale'
"	Plug 'epilande/vim-es2015-snippets'
"	Plug 'mattn/emmet-vim'
"	Plug 'epilande/vim-react-snippets'
"	Plug 'SirVer/ultisnips'
"	Plug 'Valloric/YouCompleteMe'
call plug#end()
" Load all plugins now
packloadall
" End VIM Plug Setup

" Basic functionality setup
let mapleader = " "
set backspace=indent,eol,start
set clipboard=unnamed
syntax on
set number relativenumber
set notimeout
set ttimeout
set splitbelow
set splitright

" Fuzzy Find Setup
" Recursive Search
set path+=**
" Allows tab complete
set wildmenu



" Basic Key Mappings
map <leader>n :NERDTreeToggle<CR>
map <leader>w <C-w>q
map <leader>s :Prettier<CR>:w<CR>

" Prettier Options
let g:prettier#autoformat = 1


" ALE Options
let g:ale_fixers = {'javascript':['eslint']}
let g:ale_linters = {'javascript':['eslint']}


let g:ale_javascript_eslint_use_global = 1
let g:UltiSnipsExpandTrigger="<C-l>"



    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
