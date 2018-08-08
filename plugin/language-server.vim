let g:LanguageClient_serverCommands = {
\ 'javascript.jsx.flow': ['flow-language-server', '--stdio'],
\ 'javascript.js': ['flow-language-server', '--stdio'],
\ 'javascript.jsx': ['flow-language-server', '--stdio'],
\ 'typescript': ['/usr/local/lib/node_modules/typescript-language-server/lib/cli.js', '--stdio'],
\ }

" (Optionally) automatically start language servers.
let g:LanguageClient_autoStart = 1


