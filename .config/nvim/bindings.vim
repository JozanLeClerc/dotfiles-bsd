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
nnoremap <silent> <leader>g :G<CR>
nnoremap <silent> <leader>d :Vifm<CR>
nnoremap <silent> <leader>e :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>p :<C-u>CocList -A --normal yank<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>w :w<CR>:bp<CR>:bd #<CR>
nnoremap <leader>x :w<CR>:bp<CR>:bd #<CR>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab10
inoremap <expr> <C-j> pumvisible() ? "<C-n>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "<C-p>" : "<C-k>"
