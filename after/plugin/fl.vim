fu! fl#ConfigEdit()
  execute "tabedit " . expand("~/.config/nvim/init.vim")
endfunction

fu! fl#ConfigZshEdit()
  execute "tabedit " . expand("~/.zshrc")
endfunction

fu! fl#AddSnippet()
  execute "tabedit " . expand("~/.config/nvim/UltiSnips/javascript.snippets")
endfunction

fu! fl#UseTab()
  set noexpandtab
endfunction

fu! fl#UseSpace()
  set expandtab
endfunction

nnoremap <silent> <leader>e  :e<CR>
