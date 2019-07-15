" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')
" Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-fnr' " find and replace preview
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-peekaboo' " Register manager

" Tmux statusline generator
" Plug 'edkolev/tmuxline.vim'

Plug 'gabrielelana/vim-markdown'
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

" JavaScript
Plug 'sheerun/vim-polyglot'


"
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-rooter' " change current directory to root
Plug 'ryanoasis/vim-webdevicons'
Plug 'sbdchd/neoformat', { 'do': 'npm install -g prettier' }
Plug 'eugen0329/vim-esearch'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'natebosch/vim-lsc'
Plug 'junegunn/vim-peekaboo' " Register manager
Plug 'itchyny/vim-cursorword'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

let mapleader = ','
let maplocalleader = ','

let g:AutoPairsShortcutFastWrap = '<C-d>'

" let g:comfortable_motion_no_default_key_mappings = 1
let g:neosnippet#enable_completed_snippet = 1
let g:user_emmet_leader_key='<C-e>'
let g:mta_filetypes = {
                        \ 'html': 1,
                        \ 'xhtml': 1,
                        \ 'phtml': 1,
                        \ 'javascript.jsx': 1,
                        \ 'javascript.jsx.flow': 1,
                        \}
let g:user_emmet_settings = {
                        \  'javascript.jsx.flow' : {
                        \      'extends' : 'jsx',
                        \  },
                        \}

let g:mta_use_matchparen_group = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

let g:webdevicons_conceal_nerdtree_brackets = 0

let g:racer_cmd = "/Users/feiliu/.cargo/bin/racer"
let g:racer_experimental_completer = 1

let g:rustfmt_command = '/Users/feiliu/.cargo/bin/rustfmt'
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1

let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'ShowHover': 'K',
    \ 'Completion': 'completefunc',
    \}

let g:fzf_action = {
\ 'ctrl-u': 'tab split',
\ 'ctrl-x': 'split',
\ 'ctrl-v': 'vsplit' }

