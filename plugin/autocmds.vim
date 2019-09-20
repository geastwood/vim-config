command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd VimResized * wincmd =
