let g:ale_completion_enabled = 1
" let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 0
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1


let g:ale_linters ={
                  \   'csh': ['shell'],
                  \   'go': ['gometalinter', 'golint'],
                  \   'javascript': ['eslint', 'flow'],
                  \   'python': ['flake8', 'mypy', 'pylint'],
                  \   'rust': ['cargo'],
                  \   'spec': [],
                  \   'text': [],
                  \   'zsh': ['shell']
                  \}
