" Rainbow
let g:rainbow_active = 1

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" Cursor mode
let g:airline#extensions#cursormode#enabled = 1
" let g:cursormode_color_map = {
"             \	"i": 		"#d79921",
"             \	"n": 		"#d79921",
"             \	"R": 		"#cc241d",
"             \	"r": 		"#cc241d",
"             \	"v": 		"#b06597",
"             \	"V": 		"#b06597",
"             \	"\<C-V>":	"#b06597",
"             \}

" 10 buffers jump
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Org-mode
let g:org_todo_keywords = ['TODO',  '|', 'DONE', 'CANCELED']
let g:org_export_emacs = "/usr/local/bin/emacs"

" Floaterm
let g:floaterm_autoinsert = 1
let g:floaterm_width = 0.85
let g:floaterm_height = 0.75
let g:floaterm_wintitle = 0
let g:floaterm_autoclose = 1

" Quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150
