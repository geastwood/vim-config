let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 20
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file']
let g:deoplete#sources['javascript.jsx'] = ['buffer', 'ternjs', 'flow', 'ultisnips', 'file']
let g:deoplete#sources['javascript.jsx.flow'] = ['flow', 'buffer', 'ternjs', 'file', 'ultisnips']
let g:deoplete#sources.go = ['go']
let g:deoplete#sources.rust = ['racer']

call deoplete#custom#set('ternjs', 'rank', 50)
call deoplete#custom#set('buffer', 'rank', 60)

call defer#defer('call deoplete#enable()')
