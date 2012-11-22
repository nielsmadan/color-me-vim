set nonumber
set noshowcmd
set noshowmode
set statusline=%=
set guicursor+=a:blinkon0

hi NonText guifg=#1C1B1A guibg=#1C1B1A

function! NextSlide()
    let current_file_name = expand('%:t')
    let rx = 'slide\(\d\+\).md'
    let l = matchstr(current_file_name, rx)
    let slide_num = substitute(l, rx, '\1', '')
    let expected_file_name = 'slide' . (slide_num + 1) . '.md'
    if bufexists(expected_file_name)
        exe 'b ' . expected_file_name
    elseif filereadable(expected_file_name)
        exe 'e ' . expected_file_name
    endif
endfunction

function! PrevSlide()
    let current_file_name = expand('%:t')
    let rx = 'slide\(\d\+\).md'
    let l = matchstr(current_file_name, rx)
    let slide_num = substitute(l, rx, '\1', '')
    if slide_num != 0
        let expected_file_name = 'slide' . (slide_num - 1) . '.md'
        if bufexists(expected_file_name)
            exe 'b ' . expected_file_name
        elseif filereadable(expected_file_name)
            exe 'e ' . expected_file_name
        endif
    endif
endfunction

noremap <silent> <c-n> :call NextSlide()<CR>
noremap <silent> <c-p> :call PrevSlide()<CR>

nnoremap <silent> <c-z> ^"ay$:norm @a<CR>
nnoremap <silent> <m-z> ^"ay$:<c-r>a<CR>

nnoremap <silent> <m-v> :set filetype=vim<CR>
nnoremap <silent> <m-m> :set filetype=markdown<CR>
nnoremap <silent> <m-p> :set filetype=python<CR>
