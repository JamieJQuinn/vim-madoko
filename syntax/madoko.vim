if exists("b:current_syntax")
    finish
endif

syn case ignore

syn region madokoTildeBlock "\v^~*$"

syn include @tex syntax/tex.vim
syn region madokoMath start="\v\$" end="\v\$" contains=@tex keepend

hi link madokoTildeBlock Function

let b:current_syntax = "madoko"
