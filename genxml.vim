" Vim global plugin providing a command to generate an xml tag
" Maintainer:	Spencer Powell <pagwin@pagwin.xyz>
" License:      This file is placed in the public domain.
function! XMLTag()
	let name = input("Tag name: ")
	exe ":normal a<" . name . "></" . name .">"
	exe ":normal" . (len(name)+2) . "h"
endfunction

command GenXML call XMLTag()
