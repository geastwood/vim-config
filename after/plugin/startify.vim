let g:startify_list_order = [
            \ [' Bookmark goes here:'],
            \ 'bookmarks', 
            \ [' Current Project:'],
            \ 'dir', 
            \ [' MRU'],
            \ 'files', 
            \ [' Session'],
            \ 'sessions', 
            \ 'commands'
            \]
let g:startify_bookmarks = [
            \ {'v': '~/.config/nvim/init.vim'},
            \ {'g': '~/Projects/guestlist-app'},
            \ {'a': '~/Projects/InterNationsApp'},
            \ {'i': '~/Projects/in'},
            \]

let g:startify_change_to_vcs_root = 1
let g:startify_enable_special = 1
let g:startify_files_number = 10

let g:startify_custom_footer = [
            \'',
            \'',
            \'   ███████╗███████╗██╗',
            \'   ██╔════╝██╔════╝██║',
            \'   █████╗  █████╗  ██║',
            \'   ██╔══╝  ██╔══╝  ██║',
            \'   ██║     ███████╗██║',
            \'   ╚═╝     ╚══════╝╚═╝',
            \]
