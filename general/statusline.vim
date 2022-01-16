set laststatus=2
set statusline=
set statusline+=%1*
set statusline+=%{StatuslineMode()}
set statusline+=\ 
set statusline+=%2*
set statusline+=\ 
set statusline+=%2*
set statusline+=%f
set statusline+=%=
set statusline+=%l
set statusline+=:
set statusline+=%c
set statusline+=\ 
set statusline+=%1*
set statusline+=%P
hi User1 ctermbg=white ctermfg=black guibg=white guifg=black
hi User2 ctermbg=black ctermfg=white guibg=black guifg=white

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

