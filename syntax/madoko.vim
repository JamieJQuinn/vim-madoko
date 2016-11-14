if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "madoko"

syn include @tex syntax/tex.vim
syn region madokoMath start=/\v\$/ end=/\v\$/ contains=@tex keepend
