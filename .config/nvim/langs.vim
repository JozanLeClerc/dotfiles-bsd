let g:asmsyntax = 'asm'
let perl_include_pod = 1
autocmd BufNewFile,BufRead *.c
			\ set
			\ filetype=c
			\ cinoptions+=t0
autocmd BufNewFile,BufRead *.h
			\ set
			\ filetype=c
			\ cinoptions+=t0
autocmd BufNewFile,BufRead *.cxx
			\ set
			\ filetype=cpp
			\ cinoptions+=t0
autocmd BufNewFile,BufRead *.hxx
			\ set
			\ filetype=cpp
			\ cinoptions+=t0
autocmd FileType fish
			\ compiler fish
autocmd FileType perl
			\  setlocal com-=:# kp=perldoc\ -f
			\| compiler perl
let g:perl_compiler_force_warnings = 1
