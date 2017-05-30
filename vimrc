"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" load plugins from vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" let vundle manage vundle
Plugin 'gmarik/vundle'

" utilities
Plugin 'vim-scripts/bufkill.vim' " close buffers without closing windows
"Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'vim-syntastic/syntastic' "syntastic checkers
" colorschemes
Plugin 'chriskempson/base16-vim'

" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end()
filetype plugin indent on

"basic setting
set nocompatible " not compatible with vi
set autoread " detect when a file is changed
set ruler " show thepostion of the course
set showcmd "show the cmd that you typed
set showmode "show current model
set history=2000 "the capacity of command histroy 
set nowrap "set the line text nowrap

"set default encoding , here to solve the set listchar errors
scriptencoding utf-8
set encoding=utf-8

"show visualise tab and eol
set list!
set listchars=tab:▸\ ,eol:¬

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" change default register to clipboard
set clipboard=unnamed " for older verison less than vim 7.3.74
set clipboard=unnamedplus "for x-windows linux system

" faster redrawing
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" switch syntax highlighting on
syntax on

set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark
colorscheme delek

set number

set autoindent " automatically set indent of new line
set smartindent
"here we highlight trailing white space and black line with none words
match ErrorMsg '\s\+$'
" remove trailing whitespace short for trim white space
nnoremap <Leader>tr :%s/\s\+$//e<CR>

"set laststatus=2 " show the satus line all the time

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set pastetoggle=<F2> "switch of indent temperily

map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

map <leader>wc :wincmd q<cr>

" escapte to normal model from insert mode by press ,,
vmap ,, <esc>
map! ,, <esc>
" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic settings begin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" the error window will be automatically opened when errors are detected, and closed when none are detected.
let g:syntastic_auto_loc_list = 1
" syntastic settings end

" close NERDTree after a file is opened
"let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
"let NERDTreeShowHidden=1
" Toggle NERDTree
"nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
"nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
"nmap <silent> <leader>r :CtrlPBuffer<cr>
"let g:ctrlp_map='<leader>t'
"let g:ctrlp_dotfiles=1
"let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
"let g:ctrlp_custom_ignore = {
            "\ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            "\ 'file': '\.exe$\|\.so$'
            "\ }

" search the nearest ancestor that contains .git, .hg, .svn
"let g:ctrlp_working_path_mode = 2
