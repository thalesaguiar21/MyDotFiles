set encoding=utf-8
set number
syntax enable
set noswapfile
set scrolloff=5


source ~/.config/nvim/plugins.vim
" Plugins  Configurations
source ~/.config/nvim/ale-config.vim
source ~/.config/nvim/treesitter-config.vim

" Native Language Server Protocol (LSP) Concfigurations
source ~/.config/nvim/lsp-config.vim
luafile ~/.config/nvim/compe-config.lua
luafile ~/.config/nvim/python-lsp.lua
luafile ~/.config/nvim/html-lsp.lua
luafile ~/.config/nvim/latex-lsp.lua

source ~/.config/nvim/mappings.vim

" Colorscheme
" Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
" Gruvbox
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'
" if (has("termguicolors"))
"     set termguicolors
" endif

" Palenight
" let g:airline_theme = "palenight"
" let g:palenight_terminal_italics=1
" set background=dark
" colorscheme palenight

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

