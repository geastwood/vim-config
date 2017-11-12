" Load Plugins with vim-plug
call plug#begin('~/.dotfiles/vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-slash' " improve search
Plug 'junegunn/vim-fnr' " find and replace preview
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-peekaboo' " Register manager

" Tmux statusline generator
" Plug 'edkolev/tmuxline.vim'

Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-unimpaired'
Plug 'vimwiki/vimwiki'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-sleuth' " fix shiftwidth and expandtab

Plug 'tommcdo/vim-exchange'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx.flow'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx.flow'] }
Plug 'alvan/vim-closetag'
Plug 'benekastah/neomake'
Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx.flow'], 'do': 'npm install -g tern' }
Plug 'steelsojka/deoplete-flow', { 'for': ['javascript', 'javascript.jsx.flow'] }
Plug 'wwwdata/vim-flow', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'on': ['TernDef', 'TernDoc', 'TernDocBrowse', 'TernType', 'TernDefPreview', 'TernDefSplit', 'TernDefTab', 'TernRefs', 'TernRename'] }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-rooter' " change current directory to root
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.dotfiles/vim/plugged/gocode/nvim/symlink.sh' }
Plug 'Valloric/MatchTagAlways'
Plug 'ryanoasis/vim-webdevicons'
Plug 'retorillo/istanbul.vim', { 'on': ['IstanbulClear', 'IstanbulUpdate', 'IstanbulMode'] }
Plug 'sbdchd/neoformat', { 'do': 'npm install -g prettier' }
Plug 'reasonml/vim-reason-loader'
Plug 'leafgarland/typescript-vim'
Plug 'eugen0329/vim-esearch'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'junegunn/vim-peekaboo' " Register manager
Plug 'itchyny/vim-cursorword'
Plug 'MattesGroeger/vim-bookmarks'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Haskell
Plug 'itchyny/vim-haskell-indent'

call plug#end()


let mapleader = ','
let maplocalleader = ','

let g:user_emmet_leader_key='<C-e>'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"
let g:mta_filetypes = {
            \ 'html': 1,
            \ 'xhtml': 1,
            \ 'phtml': 1,
            \ 'javascript.jsx': 1,
            \ 'javascript.jsx.flow': 1,
            \}
let g:mta_use_matchparen_group = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

let g:webdevicons_conceal_nerdtree_brackets = 0

let g:racer_cmd = "/Users/feiliu/.cargo/bin/racer"
let g:racer_experimental_completer = 1

let g:rustfmt_command = '/Users/feiliu/.cargo/bin/rustfmt'
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1

" rafi-2017 - hybrid custom
" =========================

" Plugin: NERDTree icons and highlights {{{
" ---------------------------------------------------------
let g:NERDTreeIndicatorMapCustom = {
        \ 'Modified':  'x',
        \ 'Staged':    '‧',
        \ 'Untracked': '?',
        \ 'Renamed':   '≫',
        \ 'Unmerged':  '≠',
        \ 'Deleted':   '✃',
        \ 'Dirty':     '⁖',
        \ 'Clean':     '✓',
        \ 'Unknown':   '⁇'
        \ }

let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'

highlight! NERDTreeOpenable ctermfg=132 guifg=#B05E87
highlight! def link NERDTreeClosable NERDTreeOpenable

highlight! NERDTreeFile ctermfg=246 guifg=#999999
highlight! NERDTreeExecFile ctermfg=246 guifg=#999999

highlight! clear NERDTreeFlags
highlight! NERDTreeFlags ctermfg=234 guifg=#1d1f21
highlight! NERDTreeCWD ctermfg=240 guifg=#777777

highlight! NERDTreeGitStatusModified ctermfg=1 guifg=#D370A3
highlight! NERDTreeGitStatusStaged ctermfg=10 guifg=#A3D572
highlight! NERDTreeGitStatusUntracked ctermfg=12 guifg=#98CBFE
highlight! def link NERDTreeGitStatusRenamed Title
highlight! def link NERDTreeGitStatusUnmerged Label
highlight! def link NERDTreeGitStatusDirDirty Constant
highlight! def link NERDTreeGitStatusDirClean DiffAdd
highlight! def link NERDTreeGitStatusUnknown Comment

function! s:NERDTreeHighlight()
        for l:name in keys(g:NERDTreeIndicatorMapCustom)
                let l:icon = g:NERDTreeIndicatorMapCustom[l:name]
                if empty(l:icon)
                        continue
                endif
                let l:prefix = index(['Dirty', 'Clean'], l:name) > -1 ? 'Dir' : ''
                let l:hiname = escape('NERDTreeGitStatus'.l:prefix.l:name, '~')
                execute 'syntax match '.l:hiname.' #'.l:icon.'# containedin=NERDTreeFlags'
        endfor

        syntax match hideBracketsInNerdTree "\]" contained conceal containedin=NERDTreeFlags
        syntax match hideBracketsInNerdTree "\[" contained conceal containedin=NERDTreeFlags
endfunction

augroup nerdtree-highlights
        autocmd!
        autocmd FileType nerdtree call s:NERDTreeHighlight()
augroup END
"}}}
