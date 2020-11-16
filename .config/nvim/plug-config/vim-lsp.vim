if executable('ccls')
	autocmd User lsp_setup call lsp#register_server({
				\ 'name': 'ccls',
				\ 'cmd': {server_info->['ccls']},
				\ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
				\ 'initialization_options': {
				\   'highlight': { 'lsRanges' : v:true },
				\ },
				\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
				\ })
	autocmd FileType c,cpp,objc,objcpp,cc setlocal omnifunc=lsp#complete
endif

highlight LspCxxHlSymStruct ctermfg=Yellow guifg=Yellow
highlight LspCxxHlSymClass ctermfg=Yellow guifg=Yellow
highlight LspCxxHlSymField ctermfg=Blue guifg=Blue
highlight LspCxxHlSymParameter ctermfg=LightYellow guifg=LightYellow
highlight LspCxxHlSymVariableStatic ctermfg=LightRed guifg=LightRed
highlight LspErrorHighlight cterm=undercurl gui=undercurl ctermfg=DarkRed guifg=DarkRed
highlight LspWarningHighlight cterm=underline gui=underline ctermfg=DarkRed guifg=DarkRed
highlight LspInformationHighlight cterm=underline gui=underline ctermfg=Green guifg=Green
highlight LspHintHighlight term=italic cterm=italic gui=italic ctermfg=Green guifg=Green

let g:lsp_signs_priority = 10
let g:lsp_textprop_enabled = 1
let g:lsp_cxx_hl_use_text_props = 1
