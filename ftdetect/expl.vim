au BufNewFile,BufRead *.expl set filetype=expl
autocmd Filetype expl setlocal omnifunc=syntaxcomplete#Complete
