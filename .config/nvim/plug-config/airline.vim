" Airline
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_theme = 'base16_default'
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks =
			\  [
			\ 'indent',
			\ 'trailing',
			\ 'long',
			\ 'conflicts'
			\ ]
" \ 'mixed-indent-file',
let g:airline#extensions#whitespace#max_lines = 20000
let g:airline#extensions#whitespace#show_message = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#error_symbol = 'E:'
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
