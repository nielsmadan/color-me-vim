
Solution: Write some vimscript!
===============================

Define RGB colors and associated terminal colors:

    let s:cerise = ['#FF0033', 197]

    function! s:Highlight(group_name, guifg, guibg, gui, guisp)
        if !empty(a:guifg)
            let guifg = a:guifg
        else
            let guifg = ['fg', 'fg']
        endif

        " ...
        " ...
        " ...

        if has("gui_running")
            exe 'hi ' . a:group_name . ' guifg=' . guifg[0] . ' guibg=' . guibg[0] . ' gui=' . gui . ' guisp=' . guisp[0]
        else
            exe 'hi ' . a:group_name . ' ctermfg=' . guifg[1] . ' ctermbg=' . guibg[1] . ' cterm=' . gui
        endif
    endfunction

Call as:

    call s:Highlight('Keyword', s:cerise, '', 'bold', '')

Instead of:

    highlight Keyword guifg=#FF0033, guibg=bg, gui=bold, guisp=fg cterm=197 ctermbg=bg, cterm='none'

Makes it possible to define colors as variables, and much less typing.

Similar function for highlighting without defaults.
