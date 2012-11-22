Defining a color scheme
=======================

Example to start with:

    hi markdownH1 guifg=#FF0000 guibg=#FFFFFF gui='bold,underline'

    hi markdownH1 ctermfg=9 ctermbg=15 cterm='bold,underline'

Possible options:

* term: (normal terminal)
* cterm (color terminal): ctermfg, ctermbg, cterm
* gui: (gui vim): guifg, guibg, gui, guisp, (font)

Gui options take a 24 bit RGB hex code.

Cterm options take a number in the [256 color terminal palette]. Also possible: 88 or 16 colors.

Default arguments: 

* 'fg' for foreground color of the 'Normal' syntax group.
* 'bg' for background color of the 'Normal' syntax group.

Link one syntax group to another.

    hi link pythonStatement	Statement

[256 color terminal palette]: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
