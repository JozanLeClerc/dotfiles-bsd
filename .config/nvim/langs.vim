let g:asmsyntax = 'asm'
let perl_include_pod = 1
autocmd FileType perl
			\  setlocal com-=:# kp=perldoc\ -f
			\| compiler perl
let g:perl_compiler_force_warnings = 1
