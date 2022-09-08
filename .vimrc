if &compatible
      set nocompatible
endif
filetype off
set hidden
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Documentation and Markdown
	Plugin 'heavenshell/vim-jsdoc'
	Plugin 'tpope/vim-markdown'
	Plugin 'vimwiki/vimwiki'
	" TREE TAB
	Plugin 'preservim/nerdtree'
	Plugin 'junegunn/vim-easy-align'
	Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plugin 'dense-analysis/ale'
	Plugin 'epilande/vim-es2015-snippets'
	Plugin 'epilande/vim-react-snippets'

	" Smart comments
	Plugin 'tpope/vim-commentary'
	
	
	"Fuzzy file, buffer, mru, tag, etc finder. 
	Plugin 'ctrlpvim/ctrlp.vim'
	
	"Visual tab {bottom}
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	
	"Packages themes
	Plugin 'flazz/vim-colorschemes'
	Plugin 'ParamagicDev/vim-medic_chalk'
	
	"Shows a git diff in the gutter (sign column) and stages/undoes hunks.
	Plugin 'airblade/vim-gitgutter'
	
	"A collection of language packs for Vim.
	Plugin 'sheerun/vim-polyglot'
	
	"Make gvim-only colorschemes work transparently in terminal vim
	Plugin 'vim-scripts/CSApprox'
	
	"This plugin causes all trailing whitespace to be highlighted in red.
	Plugin 'bronson/vim-trailing-whitespace'
	
	"Insert or delete brackets, parens, quotes in pair.
	Plugin 'jiangmiao/auto-pairs'
	
	"Tagbar displays the tags of the current file in a sidebar,
	Plugin 'majutsushi/tagbar'
	
	"Syntax checking hacks for vim
	Plugin 'scrooloose/syntastic'
	
	"Multiple Cursors
	Plugin  'mg979/vim-visual-multi'
	
	"Display the indention levels with thin vertical lines
	Plugin 'Yggdroot/indentLine'
	
	"Interactive command execution in Vim.
	Plugin 'Shougo/vimproc.vim'
	
	"" Vim Session
	" Plugin 'xolox/vim-misc'
	" Plugin 'xolox/vim-session'
	
	"Improved integration between Vim and its environment 
	Plugin 'Shougo/vimshell.vim'
	
	"" Snippets
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	
	"" Custom bundles
	Plugin 'tpope/vim-surround'
	Plugin 'Valloric/YouCompleteMe'
	" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
	Plugin 'mattn/emmet-vim'
	Plugin 'michalliu/sourcebeautify.vim'
	
	"" Javascript Bundle
	Plugin 'jelera/vim-javascript-syntax'
	Plugin 'marijnh/tern_for_vim'
	Plugin 'burnettk/vim-angular'
	Plugin 'mxw/vim-jsx'
	Plugin 'leafgarland/typescript-vim'
	
	"" CSS Bundle
	Plugin 'wavded/vim-stylus'
	Plugin 'hail2u/vim-css3-syntax'
	Plugin 'groenewege/vim-less'
	Plugin 'gorodinskiy/vim-coloresque'
	
	"" HTML Bundle
	Plugin 'vim-scripts/HTML-AutoCloseTag'
	Plugin 'tpope/vim-haml'
	Plugin 'digitaltoad/vim-jade'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set conceallevel=0
set tw=80
"set spell spelllang=en_us
" Color Scheme
set background=dark
colorscheme nord 
" autocmd :AirlineTheme papercolor
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
map <leader>cw <C-w>q
map <leader>s :Prettier<CR>:w<CR>
let g:session_autosave = 'no'
" Prettier Options
let g:prettier#autoformat = 1


" ALE Options
let g:ale_fixers = {'javascript':['eslint']}
let g:ale_linters = {'javascript':['eslint']}
let g:ale_javascript_eslint_use_global = 1

" JSDOC Options
let g:jsdoc_enable_es6 = 1
let g:jsdoc_allow_input_prompt = 1

" SirVer Ultisnips Options
 let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-j>"
  let g:UltiSnipsJumpBackwardTrigger="<c-k>"

  " If you want :UltiSnipsEdit to split your window
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories=["ultisnips"]

let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'md', 'bash=sh']
