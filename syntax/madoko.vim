if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "madoko"

syn include @tex syntax/tex.vim
syn region madokoMath start="\\\@<!\$" end="\$" contains=@tex keepend
