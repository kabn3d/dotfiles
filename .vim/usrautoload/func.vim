function! GetGitBranchName()
  let branchName = ""
  if exists("g:loaded_fugitive")
    let branchName = "[" . fugitive#head() . "]"
  endif

  return branchName
endfunction

