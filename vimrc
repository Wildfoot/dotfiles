"Settings
set expandtab
set tabstop=4
set shiftwidth=4
set number
set autoindent
set smartindent
set t_Co=256

syntax on

"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

"Setting up vundle"
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
let iCanHazVundle=1
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle --depth 1
    let iCanHazVundle=0
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"-----------------

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

filetype plugin indent on     " required

"Plugin (Bundles)
Plugin 'Auto-pairs'

Plugin 'SingleCompile'

Plugin 'Pydiction'

Plugin 'vim-scripts/HTML5-Syntax-File'

Plugin 'tpope/vim-surround'
"Class/Module browser
Plugin 'scrooloose/nerdcommenter' 

Plugin 'majutsushi/tagbar'
" Auto complete tag pair
Plugin 'othree/xml.vim'
"Auto Complete
Plugin 'garbas/vim-snipmate'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'honza/vim-snippets'

Plugin 'scrooloose/nerdtree'

"Plugin 'matchit.zip'

if iCanHazVundle == 0
    echo "Installing Plugins..."
    :PluginInstall
endif

"Pydiction plugin settings----------------
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3
let g:syntastic_python_python_exe = 'python3'

"folding
set foldenable 
set foldmethod=syntax 
set foldcolumn=0 
nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

"Run files
autocmd filetype c   nnoremap <F8> :w <bar> exec '!gcc '.shellescape('%').' -O2 && ./a.out'<CR>
autocmd filetype cpp nnoremap <F8> :w <bar> exec '!g++ '.shellescape('%').' -std=c++11 -O2 && ./a.out'<CR>
autocmd BufRead *.py nmap <F8> :w !python3 % <CR>
autocmd FileType html set 

autocmd FileType python setlocal et sta sw=4 sts=4

"Tagbar
nmap <F4> :Tagbar<CR>
nmap <F5> :NERDTree<CR>
nmap <F9> :set paste<CR>
nmap <F10> :set nopaste<CR>

"Key Mapping
cab Q q
cab W w
cab X x
cab WQ wq
cab Wq wq
cab wQ wq
cab Set set

