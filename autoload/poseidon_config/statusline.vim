" Config for custom statusline

function poseidon_config#statusline#init()
    let g:airline_theme='solarized'
    let g:airline_powerline_fonts=1
    let g:airline_skip_empty_sections = 1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#tab_nr_type=1  " Display tab number only
endfunction
