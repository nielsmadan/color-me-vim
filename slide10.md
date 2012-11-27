
Tips & Tricks
=============

Highlight your RGB values using the [hexHighlight] plugin.

    let s:cerise = ['#FF0033', 197]
    let s:lime = ['#AEEE00', 154]
    let s:gold = ['#FFB829', 214]

    hi Constant        guifg=#AE81FF               gui=bold
    hi Cursor          guifg=#000000 guibg=#F8F8F0
    hi Debug           guifg=#BCA3A3               gui=bold
    hi Define          guifg=#66D9EF
    hi Delimiter       guifg=#8F8F8F

Show the syntax group of the word under the cursor using the [SynStack] function:

    nnoremap <leader><c-p> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
        if !exists("*synstack")
            return
        endif
        let sgroup_list = map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
        echo sgroup_list
        let @s = join(sgroup_list, ' ')
    endfunc

[hexHighlight]: http://www.vim.org/scripts/script.php?script_id=2937
[SynStack]: http://stackoverflow.com/questions/1467438/find-out-to-which-highlight-group-a-particular-keyword-symbol-belongs-in-vim
