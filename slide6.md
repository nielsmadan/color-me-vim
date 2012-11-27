
Defining a syntax
=================

Load syntax file according to filetype from `$VIMRUNTIME/syntax/language.vim`

1. keyword: match words

        syn keyword pythonConditional	elif else if

        syn keyword markdownOrderedListMarker according

2. match: match regex

        syn match   pythonComment	"#.*$" contains=pythonTodo,@Spell
        syn keyword pythonTodo		FIXME NOTE NOTES TODO XXX contained

3. region: start regex, end regex

        syn region  pythonString
              \ start=+[uU]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
              \ contains=pythonEscape,@Spell

##What about an `if` inside a string?

Configure
---------

* Change syntax in `~/.vim/after/syntax/language.vim`.
* Automatically loaded after normal syntax file has run.

>Aside:
>
>`:TOhtml` command converts current window to html.
