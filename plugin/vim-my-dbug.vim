if exists("vim_my_dbug_leonelsoirano3")
    finish
endif
let vim_my_dbug_leonelsoirano3 = 1

""===== init


"constant
"==========================

    let s:extDebug = {"java" : "jdc"}
"======================

"var
"======================
    let s:debugType = 0
"==================

fun! MyDbugBreakPoint()
    let file_name = expand('%:t:r')
    let extension = expand('%:e')
    let s:debugType = get(s:extDebug, extension, 0)

    if(s:debugType is 0)
        echohl ErrorMsg
        echo "MyDbug Error: type of debugg not found"
        echohl None
    endif

    let l:lineNumber = line('.')
    let l:currentBuffer = bufnr('%')
    " exe 'sign place '. s:hash(expand("%:t"), str2nr(l:lineNumber)) .' line='. str2nr(l:lineNumber)
    "    .' name=breakpointnotconnected buffer='. l:currentBuffer
    "echo l:lineNumber
endfun

"absolute pah es :p
"nombre del archivo es :t
"nombre sin extencion es :t:r
"extencion es :e
"probando un togle de break point con esto oka
fun! s:startDbug()
    exe 'sign define breakpointMyDbug text=* texthl=Search'
    "echom "hola"
endfun



"call s:startDbug()

