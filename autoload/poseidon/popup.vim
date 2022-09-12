" Extra helper functions used for popup window

function poseidon#popup#find_cursor_popup(...)
    let radius = get(a:000, 0, 2)
    let srow = screenrow() "Get the current cursor row
    let scol = screencol() "Get the current cursor col
    for r in range(srow - radius, srow + radius)
        for c in range(scol - radius, scol + radius)
            "Return the window-ID of the popup at screen position
            let winid = popup_locate(r, c)
            if winid != 0
                return winid
            endif
        endfor
    endfor
endfunction

function poseidon#popup#scroll_cursor_popup(down)
  let winid = poseidon#popup#find_cursor_popup()
  if winid == 0
    return 0
  endif

  let pp = popup_getpos(winid)
  call popup_setoptions(winid,
        \ {'firstline' : pp.firstline + ( a:down ? 1 : -1 ) } )

  return 1
endfunction

