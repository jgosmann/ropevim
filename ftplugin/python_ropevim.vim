if has("python3")
function! LoadRope()
python3 << EOF
import ropevim
from rope_omni import RopeOmniCompleter
EOF
endfunction

call LoadRope()

" The code below is an omni-completer for python using rope and ropevim.
" Created by Ryan Wooden (rygwdn@gmail.com)
function! RopeCompleteFunc(findstart, base)
    " A completefunc for python code using rope
    if (a:findstart)
        py3 ropecompleter = RopeOmniCompleter(vim.eval("a:base"))
        py3 vim.command("return %s" % ropecompleter.start)
    else
        py3 vim.command("return %s" % ropecompleter.complete(vim.eval("a:base")))
    endif
endfunction

elseif has("python")
function! LoadRope()
python << EOF
import ropevim
from rope_omni import RopeOmniCompleter
EOF
endfunction

call LoadRope()

" The code below is an omni-completer for python using rope and ropevim.
" Created by Ryan Wooden (rygwdn@gmail.com)
function! RopeCompleteFunc(findstart, base)
    " A completefunc for python code using rope
    if (a:findstart)
        py ropecompleter = RopeOmniCompleter(vim.eval("a:base"))
        py vim.command("return %s" % ropecompleter.start)
    else
        py vim.command("return %s" % ropecompleter.complete(vim.eval("a:base")))
    endif
endfunction
endif
