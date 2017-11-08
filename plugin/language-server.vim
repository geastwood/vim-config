let g:LanguageClient_serverCommands = {
\ 'javascript.jsx.flow': ['flow-language-server', '--stdio'],
\ }

" (Optionally) automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> ls :call LanguageClient_textDocument_documentSymbol()<CR>

