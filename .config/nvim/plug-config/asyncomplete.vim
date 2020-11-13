autocmd User asyncomplete_setup call asyncomplete#register_source(
    \ asyncomplete#sources#clang#get_source_options({
    \     'config': {
    \         'clang_path': '/usr/bin/cc',
    \         'clang_args': {
    \             'default': ['-I/usr/include'],
    \             'c': ['-std=c89', '-I/usr/include'],
    \             'cpp': ['-std=c++98', '-I/usr/include']
    \         }
    \     }
    \ }))
