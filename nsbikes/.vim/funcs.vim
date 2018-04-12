function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/ge
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction

function! VisualLength()
  exe 'normal "xy'
  echo "Visual: " . strlen(@x) . "\n"
  exe 'normal gv'
endfunction

command! -register CopyMatches call CopyMatches(<q-reg>)

let s:last_jump_bytes = 0

function! JumpTo(byte_nr)
    let crt_byte = line2byte(line('.')) + col('.')
    if (a:byte_nr == 0)
        let dst_byte = crt_byte + s:last_jump_bytes
    else
        let dst_byte = crt_byte + a:byte_nr
        let s:last_jump_bytes = a:byte_nr
    endif
    let dst_line = byte2line(dst_byte)
    let dst_col = dst_byte -line2byte(dst_line)
    "remove next line if you don't want to record this for `Ctrl-O`
    execute "normal " . dst_line . "G"
    call setpos('.', [0, dst_line, dst_col])
endfunction

command! -nargs=1 JumpToOffset :call JumpTo(<f-args>)
