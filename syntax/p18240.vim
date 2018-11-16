" Vim syntax file
" Language:	GNU Assembler
" Maintainer:	Erik Wognsen <erik.wognsen@gmail.com>
"		Previous maintainer:
"		Kevin Dahlhausen <kdahlhaus@yahoo.com>
" Last Change:	2014 Feb 04

" Thanks to Ori Avtalion for feedback on the comment markers!

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

syn match p18240Identifier		"[a-z0-9_]\+"

" In P18240, immediate values and memory addresses are only defined in hex.
syn match hexNumber		"\$[0-9a-fA-F]\{1,4}"hs=s+1

syn keyword p18240Todo		contained TODO


syn match p18240Comment		";.*" contains=p18240Todo

" Assembler directives start with a '.' and may contain upper case (e.g.,
" .ABORT), numbers (e.g., .p2align), dash (e.g., .app-file) and underscore in
" CFI directives (e.g., .cfi_startproc). This will also match labels starting
" with '.', including the GCC auto-generated '.L' labels.
syn match p18240PseudoOp		"\.\%(org\|dw\|equ\)"

syn match p18240Instr              "\<\%(add\|addsp\|and\|ashr\|bra\|brc\|brn\|brv\|brz\|cmi\|cmr\|decr\|incr\|jsr\|lda\|ldi\|ldr\|ldsf\|ldsp\|lshl\|lshr\|mov\|neg\|not\|or\|pop\|push\|rol\|rtn\|sta\|stop\|str\|stsf\|stsp\|sub\|xor\)\>"

syn match p18240Reg                "\<r[0-7]\>"


syn case match

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

" The default methods for highlighting.  Can be overridden later
" hi def link p18240Label	Label
hi def link p18240Identifier	Identifier
hi def link p18240Comment	Comment
hi def link p18240Todo	Todo
hi def link p18240PseudoOp	Statement

hi def link hexNumber	Number

hi def link p18240Instr    Keyword

hi def link p18240Reg      Type


let b:current_syntax = "p18240"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=8
