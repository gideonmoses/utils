" ---- For Vundle plugin -START-
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/nerdtree.git' 
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mileszs/ack.vim'
" Plugin 'Shougo/vimfiler.vim'
" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/vimproc.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

"  --- For Vundle plugin -END-

syntax enable
set background=dark
colorscheme solarized
"--autocmd VimEnter * NERDTree " -- To load NERDTree by Default
"--autocmd VimEnter * wincmd p " -- To move the cursor to main window
"close vim if the only window left open is a NERDTree
"--autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"Ctrl+n mapping to NerdTree
"--map <F2> :NERDTreeToggle<CR>
set guioptions-=L
set number " -- To set line number to the buffers opened in VIM
"-- 2 lines to make CtrlP work on <CTRL+p>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set splitright "-- To open the Vsplit to right of the opened file
let g:ctrlp_reuse_window  = 'startify'
set wildignore+=*/bower_components/*,*/node_modules/*,*/dist/*,*/tmp/*
set wildignore+=*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
"-- # to use spaces instead of tab indent 
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
"-- /end spaces for indent
set cursorline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 " for air line status bar
let g:airline_powerline_fonts = 1
"let g:mustache_abbreviations = 1
nnoremap <C-n> :bnext<CR> " move to the next buffer SHIFT + n
nnoremap <S-n> :bprevious<CR> " Move to teh previous buffer SHIFT + n
"set list listchars=tab:»-,trail:·,extends:»,precedes:« "-- from the ... to appear while spacing in VIM mode
set lines=95 columns=300 " to make the macvim window size large
set guifont=Anonymous\ Pro\ for\ Powerline:h14
set noerrorbells visualbell t_vb= "to avoid beep sound on error
autocmd GUIEnter * set visualbell t_vb= "to avoid beep sound on error 
let g:netrw_liststyle=3 " for the netrw to show tree style listing
source ~/.vim/cscope_maps.vim
