""" Custome General Configs

function poseidon_config#general#init()
    set hidden            " Allow buffer swap without save
    set cursorline        " Highlight current line
    set relativenumber    " Show relative line number

    let g:mapleader=" "
    noremap <Leader>r :source ~/.vimrc<CR>
                 \ :nohl<CR>
                 \ :echo "Refresh vimrc configuration."<CR>
    noremap <Leader>p :bp<CR>
    noremap <Leader>n :bn<CR>
    noremap <Leader>d :bd<CR>

    " Change the shape of cursor
    " Reference [stackoverflow](https://stackoverflow.com/questions/6488683/how-to-change-the-cursor-between-normal-and-insert-modes-in-vim)
    if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_SR = "\<Esc>]50;CursorShape=2\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
    " Solve the delay problem
    set ttimeout
    set ttimeoutlen=1
    set ttyfast
endfunction
