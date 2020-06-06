" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')

Plug 'junegunn/vim-fnr' " find and replace preview
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'junegunn/vim-peekaboo' " Register manager

Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-unimpaired'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-sleuth' " fix shiftwidth and expandtab
Plug 'tpope/vim-projectionist'
" bash
Plug 'vim-scripts/bash-support.vim'

" Grpahql
Plug 'jparise/vim-graphql'

Plug 'vim-airline/vim-airline'

" JavaScript
Plug 'sheerun/vim-polyglot' " language pack

" Go
Plug 'fatih/vim-go'

" vim wiki
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sgur/vim-editorconfig'

Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-rooter' " change current directory to root
Plug 'ryanoasis/vim-webdevicons'

Plug 'itchyny/vim-cursorword'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'

" theme
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let mapleader = ','
let maplocalleader = ','

" Auto pairs
let g:AutoPairsShortcutFastWrap = '<C-d>'

" let g:comfortable_motion_no_default_key_mappings = 1
let g:neosnippet#enable_completed_snippet = 1
let g:mta_filetypes = {
                        \ 'html': 1,
                        \ 'xhtml': 1,
                        \ 'phtml': 1
                        \}

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

let g:vimwiki_use_calendar = 1

au BufRead,BufNewFile .evtrc setfiletype zsh
au BufRead,BufNewFile alias setfiletype zsh

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
