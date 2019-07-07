function! GetGitBranchName()
  let branchName = ""
  if exists("g:loaded_fugitive")
    let branchName = "[" . fugitive#head() . "]"
  endif

  return branchName
endfunction

function! ToggleDark()
  if g:scheme_bg == "dark"
    set background=light
    let g:scheme_bg = "light"
  else
    set background=dark
    let g:scheme_bg = "dark"
  endif
endfunction

