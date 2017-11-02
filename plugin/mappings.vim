" edit
inoremap <C-f> <C-o>A
inoremap <C-j> <esc>


" clear search results
nnoremap <leader>sc :noh<cr>

" misc
nnoremap <leader>S :Startify<CR>
nnoremap <leader>H :History<CR>
nnoremap <leader>C :Commands<CR>
nnoremap <leader>F :Files<CR>
nnoremap <leader>M :Maps<CR>


" easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" quickfix mapping, nextfile jumps
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Save
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
inoremap <C-s> <esc>:w<CR>
nnoremap <C-s> :w<CR>

" Quit
inoremap <C-Q> <esc>:q<cr>
nnoremap <C-Q> :q<cr>
vnoremap <C-Q> <esc>:q<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

nmap <leader>s :UltiSnipsEdit<CR>

nnoremap <leader>rc :so ~/.config/nvim/init.vim<CR>

" project
nnoremap <leader>nt :NERDTreeToggle<CR>   " open a horizontal split and switch to it (,h)
nnoremap <leader>nf :NERDTreeFind<CR>   " open a horizontal split and switch to it (,h)
nnoremap <C-f> :GitFiles<CR>
nnoremap <C-g> :Ag 
nnoremap <C-m> :Marks<CR>
nnoremap <C-c> :Commands<CR>

" window
nnoremap <leader>wv <C-w>v<C-w>l   " split vertically
nnoremap <leader>wh <C-w>s<C-w>j   " split horizontally

" file, tagbar
nnoremap <leader>ff :Files<CR>
nnoremap <leader>ft :TagbarToggle<CR> " need setup

" buffer
nnoremap <Leader><Tab> :e#<CR> " switch to last buffer
nnoremap <leader>bb :Buffers<CR>
nnoremap <C-l> :Lines<CR>
nnoremap <leader>bd :bdelete!<CR>
nnoremap <leader>bdd :BufOnly<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>b/ :Lines<CR>
nnoremap <leader>bl :BLines<CR>

" toggles
noremap <Leader>ti :set list!<CR>:echo 'Toggled special characters'<CR>" Toggle special characters
noremap <Leader>tl :set relativenumber!<CR>:echo 'Toggled relative line numbers'<CR>" Toggle relative line numbers
noremap <Leader>tse :set spell! spelllang=en<CR>:echo 'Toggled en spell check'<CR>" Toggle en spell check
noremap <Leader>tg :Goyo<CR>:echo 'Toggled Goyo'<CR>" Toggle goyo time

" git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" Terminal stuff
:tnoremap <Esc> <C-\><C-n>

" create jumplist entry for j and k jumps with more than 1 line
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" Line actions
"
" line actions
nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

nnoremap <leader>gf :sp<CR>gf<CR>

" Location list
nmap ]l :lne<CR>
nmap [l :lpr<CR>

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <A-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
nnoremap <silent> <A-l> :TmuxNavigateRight<cr>

" navigation with alt key
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Prettier
nnoremap <Leader>pt :call Prettier_Toggle()<CR>
