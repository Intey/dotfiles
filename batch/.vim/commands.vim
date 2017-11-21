" Define commands

function! Preview()
  silent exe "!feh -R 1 -Z -Y -. /tmp/" . shellescape(expand('%:r')) . ".png &"
endfunction
command! Preview :call Preview()


augroup AsciiDoc
  au!
  au FileType asciidoc au BufWritePost <buffer> !asciidoctorfix % /tmp/index.html
augroup END

augroup PlantUML
  au!
  au FileType plantuml au BufWritePost <buffer> silent !plantuml -o /tmp -tpng %
augroup END
