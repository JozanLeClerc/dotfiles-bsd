vim.g.asmsyntax = 'asm'
vim.g.perl_include_pod = 1
vim.g.perl_compiler_force_warnings = 1

-- vim.api.nvim_create_autocmd('BufNewFile,BufRead', { pattern = '*.c,*.h', command = 'set filetype=c'})
-- vim.api.nvim_create_autocmd('BufNewFile,BufRead', { pattern = '*.cc,*.hh,*.cpp,*.hpp,*.cxx,*.hxx', command = 'set filetype=cpp'})
-- vim.api.nvim_create_autocmd('BufNewFile,BufRead', { pattern = '*.ms,*.1,*.2,*.3,*.4,*.5,*.6,*.7,*.8,*.9', command = 'set filetype=groff'})
-- vim.api.nvim_create_autocmd('BufNewFile,BufRead', { pattern = '*.conf', command = 'set filetype=conf'})
vim.api.nvim_create_autocmd('BufWritePost', { pattern = '*.ms', command = "let pdf=fnamemodify(bufname('%'), ':r') . \".pdf\" | silent! execute \"!nroff % -ms -Tpdf -Kutf8 > \" . pdf"})
-- vim.api.nvim_create_autocmd('FileType fish', { command = 'compiler fish'})
-- vim.api.nvim_create_autocmd('FileType perl', { command = 'setlocal com-=:# kp=perldoc\\ -f | compiler perl'})
