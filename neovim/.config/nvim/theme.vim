" Colorscheme
" Gruvbox
" let g:gruvbox_italic=1
" set background=dark
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox


" One Dark
" let g:airline_theme='molokai'
" colorscheme onedark

" Palenight
" let g:airline_theme='palenight'
" let g:palenight_terminal_italics=1
" set background=dark
" colorscheme palenight

" Dracula
let g:dracula_bold=1
let g:dracula_italic=1
colorscheme dracula


" Airline
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#virtualenv#enabled=1


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.colnr = ' '
let g:airline_symbols.maxlinenr = ' ☰ '
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
