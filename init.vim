" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')

Plug 'junegunn/vim-fnr' " find and replace preview
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'junegunn/vim-peekaboo' " Register manager

Plug 'gabrielelana/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
" Plug 'tpope/vim-unimpaired'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-sleuth' " fix shiftwidth and expandtab

" JavaScript
Plug 'sheerun/vim-polyglot' " language pack

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-rooter' " change current directory to root
Plug 'ryanoasis/vim-webdevicons'
" Plug 'sbdchd/neoformat', { 'do': 'npm install -g prettier' }

Plug 'itchyny/vim-cursorword'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'

" theme
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

let mapleader = ','
let maplocalleader = ','

" Auto pairs
let g:AutoPairsShortcutFastWrap = '<C-d>'

" let g:comfortable_motion_no_default_key_mappings = 1
let g:neosnippet#enable_completed_snippet = 1
let g:user_emmet_leader_key='<C-e>'
let g:mta_filetypes = {
                        \ 'html': 1,
                        \ 'xhtml': 1,
                        \ 'phtml': 1
                        \}

let g:mta_use_matchparen_group = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

let g:webdevicons_conceal_nerdtree_brackets = 0

let g:racer_cmd = "/Users/feiliu/.cargo/bin/racer"
let g:racer_experimental_completer = 1

let g:rustfmt_command = '/Users/feiliu/.cargo/bin/rustfmt'
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1

let g:fzf_action = {
\ 'ctrl-u': 'tab split',
\ 'ctrl-x': 'split',
\ 'ctrl-v': 'vsplit' }

set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

