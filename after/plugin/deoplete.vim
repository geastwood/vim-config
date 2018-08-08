let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 20
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file', 'ultisnips']
let g:deoplete#sources['javascript.jsx'] = ['buffer', 'flow', 'ultisnips', 'file']
let g:deoplete#sources['javascript.jsx.flow'] = ['flow', 'ultisnips', 'file', 'buffer']
" let g:deoplete#sources['typescript'] = ['typescript', 'buffer', 'ultisnips', 'flow', 'ternjs', 'file']
let g:deoplete#sources.go = ['go']
let g:deoplete#sources.rust = ['racer']

" call deoplete#custom#source('typescript', 'rank', 70)
call deoplete#custom#source('flow', 'rank', 1)
call deoplete#custom#source('buffer', 'rank', 60)
call deoplete#custom#source('ultisnips', 'rank', 1000)

call defer#defer('call deoplete#enable()')
