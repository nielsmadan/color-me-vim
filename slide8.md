Gotchas
=======

* Highlight has no automatic defaults.

        hi markdownH1 guifg=#FF0000 guibg=#FFFFFF gui='italic'

        hi markdownH1 guifg=#00FF00

        hi markdownH1 guifg=NONE guibg=NONE gui=NONE

        hi markdownH1 guifg=fg guibg=bg gui='bold'

* Sometimes you don't want defaults (for example for diffs, errors).

* Linking up different groups can be problematic.

* Hard to see at a glance which variable is assigned which color,
  and not possible to assign RGB colors to variables

        let s:white = #FFFFFF  " fail
