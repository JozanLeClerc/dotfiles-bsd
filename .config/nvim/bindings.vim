call which_key#register('\', "g:which_key_map")
let g:which_key_map = {}
nnoremap c "_c
nnoremap <M-;> :call NERDComment(0,"toggle")<CR>
nnoremap <M-x> :
nnoremap <M-1> :!
nnoremap <silent> <M-k> :bprevious<CR>
nnoremap <silent> <M-j> :bnext<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> <C-w>o
nnoremap <C-q> <C-w>q
nnoremap <C-x>1 <C-w>o
nnoremap <C-x>2 :sp<CR>
nnoremap <C-x>3 :vsp<CR>
nnoremap <C-x>0 <C-w>q
nnoremap <silent> <leader> :WhichKey '\'<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>d :FloatermNew vifm<CR>
nnoremap <silent> <leader>e :Files<CR>
nnoremap <silent> <leader>f :Rg<CR>
nnoremap <silent> <leader>F :Ag<CR>
nnoremap <silent> <leader>g :FloatermNew lazygit<CR>
nnoremap <silent> <leader>h :Startify<CR>
nnoremap <leader>k :w<CR>:bp<CR>:bd #<CR>
nnoremap <silent> <leader>p :<C-u>CocList -A --normal yank<CR>
nnoremap <silent> <leader>v :FloatermNew vifm<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :w<CR>:bp<CR>:bd #<CR>
let g:which_key_map.b = 'buffers'
let g:which_key_map.d = 'vifm'
let g:which_key_map.e = 'files'
let g:which_key_map.f = 'grep'
let g:which_key_map.F = 'the_silver_searcher'
let g:which_key_map.g = 'lazygit'
let g:which_key_map.h = 'startify'
let g:which_key_map.k = 'write-and-close-buffer'
let g:which_key_map.p = 'coc-paste'
let g:which_key_map.v = 'vifm'
let g:which_key_map.w = 'write-buffer'
let g:which_key_map.x = 'write-and-close-buffer'
nmap <M-1> <Plug>AirlineSelectTab1
nmap <M-2> <Plug>AirlineSelectTab2
nmap <M-3> <Plug>AirlineSelectTab3
nmap <M-4> <Plug>AirlineSelectTab4
nmap <M-5> <Plug>AirlineSelectTab5
nmap <M-6> <Plug>AirlineSelectTab6
nmap <M-7> <Plug>AirlineSelectTab7
nmap <M-8> <Plug>AirlineSelectTab8
nmap <M-9> <Plug>AirlineSelectTab9
nmap <M-0> <Plug>AirlineSelectTab10
inoremap <expr> <C-j> pumvisible() ? "<C-n>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "<C-p>" : "<C-k>"
let g:floaterm_keymap_toggle	= '<F1>'
let g:floaterm_keymap_prev		= '<F11>'
let g:floaterm_keymap_next		= '<F12>'
