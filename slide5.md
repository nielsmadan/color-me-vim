
Determining filetype
====================

* file extension
* file content
* manually setting

Common Options
--------------

1. Enabling filetype detection.

    filetype (plugin indent) on

2. Overriding after normal filetype detection has run:

In ~/.vim/ftdetect.vim:

    if exists("did_load_filetypes")
        finish
    endif

    augroup filetypedetect
        au! BufNewFile,BufRead *.md setf markdown  " instead of modula2
    augroup END


Aside:

`au!` removes all auto-comands for the specified events and pattern in group,
and then adds the following command.

3. Also possible:

    * Overrule all filetype checks
    * Overrule only if no filetype found
    * Link one filetype to the detection of another
    * Determine from file content

    See: `:help filetype`
