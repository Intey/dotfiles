" Define commands

function! Preview()
  silent! exe "!plantuml -o /tmp -tpng % && feh /tmp/" . shellescape(expand('%:r')) . ".png"
endfunction

command! Preview :call Preview()
