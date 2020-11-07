let g:asmsyntax = 'asm'
let perl_include_pod = 1
autocmd BufNewFile,BufRead *.c
			\ set
			\ filetype=c
autocmd BufNewFile,BufRead *.h
			\ set
			\ filetype=c
autocmd BufNewFile,BufRead *.cxx
			\ set
			\ filetype=cpp
autocmd BufNewFile,BufRead *.hxx
			\ set
			\ filetype=cpp
autocmd FileType fish
			\ compiler fish
autocmd FileType perl
			\  setlocal com-=:# kp=perldoc\ -f
			\| compiler perl
let g:perl_compiler_force_warnings = 1
