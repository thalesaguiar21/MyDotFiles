" -------------------------------------------------- 
"  File: myvimrc
"  Author: Thales Aguiar
"  Source:
" -------------------------------------------------- 

set nocompatible              " required
filetype plugin on            " required
set encoding=utf-8
set nu
syntax on
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'dense-analysis/ale'
Plugin 'Yggdroot/indentLine'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'morhetz/gruvbox'
" Bundle 'Valloric/YouCompleteMe'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 80 column highlight
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Global
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" WhiteSpace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python Stuff
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" FullStack?!
au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" TeX
" LaTex stuff
au FileType tex
    \ setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 spell spelllang=en_gb
let g:tex_conceal = ''


" Linting
let g:ale_linters={'python': ['flake8'], 'tex': ['chktex']}
let g:ale_linters_explicit=1
let g:ale_python_flake8_executable='/home/thales/.pyenv/versions/donkey.env/bin/flake8'
let g:ale_python_flake8_use_global=1


" Themes
" Palenight
" set background=dark
" colorscheme palenight
" let g:palenight_terminal_italics=1
" if (has("nvim"))
"   "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
" if (has("termguicolors"))
"   set termguicolors
" endif

" gruvbox
set termguicolors
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

" onehalf
" syntax on
" set t_Co=256
" set cursorline
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
