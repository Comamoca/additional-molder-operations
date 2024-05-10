 function! molder#extension#operations#newfile() abort
  let l:name = input('Create new file: ')

  if empty(l:name)
    return
  endif

  if l:name == '.' || l:name == '..' || l:name =~# '[/\\]'
    call molder#error('Invalid directory name: ' .. l:name)
    return
  endif

  call s:newfile(l:name)

  call molder#reload()
endfunction

function! molder#extension#operations#newdir_parents() abort
  let l:name = input('Create directory: ')

  if empty(l:name)
    return
  endif

  if l:name == '.' || l:name == '..' 
    call molder#error('Invalid directory name: ' .. l:name)
    return
  endif

  try
    if mkdir(molder#curdir() .. l:name, "p") ==# 0
      throw 'failed'
    endif
  catch
    call molder#error('Create directory failed')
    return
  endtry

  call molder#reload()
endfunction


function! s:newfile(filename) abort
	let l:pwd = molder#curdir()
	execute "redir > " . l:pwd . a:filename
endfunction
