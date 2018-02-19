if exists("b:current_syntax")
    finish
endif

syn case ignore

" This isn't quite accurate because it doesn't match the number of ~ at the start and end, as the
" Madoko spec. indicates. However, I don't think that this can be done with Vim syntax highlighting,
" so this may be the best approximation.
syn region madokoTildeBlock start="\v^~*$" end="\v^~*$"

syn include @tex syntax/tex.vim
syn region madokoMath start="\v\$" end="\v\$" contains=@tex keepend

hi link madokoTildeBlock Function

let b:current_syntax = "madoko"
