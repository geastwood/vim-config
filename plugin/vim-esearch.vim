let g:esearch = {
    \ 'adapter':    'ag',
    \ 'backend':    'nvim',
    \ 'out':        'win',
    \ 'batch_size': 1000,
    \ 'use':        ['visual', 'hlsearch', 'last'],
    \}
" fix: remap my file mapping. This plugin always makes it's default mappings ..
autocmd VimEnter * nmap <leader>ff :Files<CR>
silent! call esearch#map('<leader>fe', 'esearch')
silent! call esearch#map('<leader>fr', 'essubstitude')
" Start esearch prompt autofilled with one of g:esearch.use initial patterns
" Start esearch autofilled with a word under the cursor
silent! call esearch#map('<leader>fw', 'esearch-word-under-cursor')
silent! call esearch#cmdline#map('<C-o><C-r>', 'toggle-regex')
silent! call esearch#cmdline#map('<C-o><C-s>', 'toggle-case')
silent! call esearch#cmdline#map('<C-o><C-w>', 'toggle-word')
silent! call esearch#cmdline#map('<C-o><C-h>', 'cmdline-help')
