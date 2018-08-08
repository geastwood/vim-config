autocmd FileType *.js set formatprg=prettier
autocmd FileType *.css set formatprg=prettier
autocmd FileType *.scss set formatprg=prettier
autocmd FileType *.jsx set formatprg=prettier
autocmd FileType *.json set formatprg=prettier
autocmd FileType *.jsx.flow set formatprg=prettier
" autocmd FileType *.dart set formatprg=dartfmt
" autocmd FileType reason set formatprg=refmt

" autocmd BufWritePre *.re Neoformat
" let g:neoformat_try_formatprg = 1
let g:prettier_enabled = 1
"
function! g:Prettier_Toggle()
     if g:prettier_enabled
        let g:prettier_enabled = 0
        echo "Prettier was disabled"
    else
        let g:prettier_enabled = 1
        echo "Prettier was enabled"
    endif
endfunction
"
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.css Neoformat
autocmd BufWritePre *.scss Neoformat
autocmd BufWritePre *.jsx Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.json Neoformat
" autocmd BufWritePre *.dart Neoformat
" let g:neoformat_try_formatprg=1
" let g:neoformat_only_msg_on_error=1
