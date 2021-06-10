function! CharAtIdx(str, idx) abort
  return strcharpart(a:str, a:idx, 1)
endfunction

function! CursorCharIdx() abort
  let cursor_byte_idx = col('.') 
  if cursor_byte_idx == 1
    return 0
  endif

  let pre_cursor_text = getline('.')[:col('.')-2]
  return strchars(pre_cursor_text)
endfunction

function brackify#putbracket(bracket)
	let cur_char_idx = CursorCharIdx()
	let cur_char = CharAtIdx(getline('.'), cur_char_idx + 1)

	if cur_char != a:bracket
		let line = getline('.')[:col('.') - 1] . a:bracket . getline('.')[col('.'):]
		call setline(line("."), line)
	endif
endfunction

function brackify#putquotes(quote)
	let cur_char_idx = CursorCharIdx()
	let cur_char = CharAtIdx(getline('.'), cur_char_idx + 1)

	if cur_char != a:quote
		let line = getline('.')[:col('.') - 1] . a:quote . a:quote . getline('.')[col('.'):]
		call setline(line("."), line)

		if col('.') > 1
			call cursor(getpos('.')[1], col('.') + 1)
		endif
	else
		call cursor(getpos('.')[1], col('.') + 1)
	endif
endfunction
