Defining a color scheme
=======================

`hi[ghlight]` command:

    hi markdownH1 guifg=#FF0000 guibg=#FFFFFF gui='bold,underline'

For terminal vim highlighting:

    hi markdownH1 ctermfg=9 ctermbg=15 cterm='bold,underline'

Important options:

* cterm (color terminal): ctermfg, ctermbg, cterm
* gui: (gui vim): guifg, guibg, gui, guisp (for undercurl), font

Gui options take a 24 bit RGB hex code.

Cterm options take a number in the [256 color terminal palette]. Also possible: 88 or 16 colors.

Special arguments: 

* 'fg' for foreground color of the 'Normal' syntax group.
* 'bg' for background color of the 'Normal' syntax group.
* 'NONE' for no color

Linking
-------

Link one syntax group to another.

    hi link pythonStatement	Statement

This is done in the language syntax file.

[256 color terminal palette]: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
