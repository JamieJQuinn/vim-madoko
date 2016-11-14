" Match language specific keywords

syn include @tex syntax/tex.vim
syn region madokoMath start="~\ Equation" end="~" contains=@tex keepend
syn region madokoMath start="~\ Math" end="~" contains=@tex keepend
