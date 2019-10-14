let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\  'typescript.tsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,javascript.jsx,typescript.tsx EmmetInstall
