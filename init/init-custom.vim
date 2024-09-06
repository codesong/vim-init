" file title
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.py,*.sh,*.[ch],*.cpp call SetTitle()
func SetTitle()
    if &filetype == 'sh' || &filetype == 'python'
        call setline(1, "#########################################################################")
        call append(line("."), "# File Name: ".expand("%"))
        call append(line(".")+1, "# Author: codesong")
        call append(line(".")+2, "# mail: codesong@qq.com")
        call append(line(".")+3, "# Created Time: ".strftime("%c"))
        call append(line(".")+4, "#########################################################################")
        call append(line(".")+5, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "* File Name: ".expand("%"))
        call append(line(".")+1, "* Author: codesong")
        call append(line(".")+2, "* Mail: codesong@qq.com ")
        call append(line(".")+3, "* Created Time: ".strftime("%c"))
        call append(line(".")+4, "*************************************************************************/")
        call append(line(".")+5, "")
    endif

    if &filetype == 'python'
        call append(line(".")+6, "# !/usr/bin/env python3")
        call append(line(".")+7, "# -*- coding: utf-8 -*-")
        call append(line(".")+8, "")
        call append(line(".")+9, "")
    endif
    if &filetype == 'sh'
        call append(line(".")+6, "# !/bin/bash")
        call append(line(".")+7, "")
        call append(line(".")+8, "")
    endif
    if &filetype == 'cpp' || &filetype == 'c'
        call append(line(".")+6, "")
    endif
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
