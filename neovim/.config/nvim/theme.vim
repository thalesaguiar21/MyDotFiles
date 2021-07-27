" Colorscheme
" Gruvbox
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'medium'


" One Dark
" let g:airline_theme='molokai'
" colorscheme onedark

" Palenight
" let g:airline_theme = "palenight"
" let g:palenight_terminal_italics=1
" set background=dark
" colorscheme palenight


" Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
