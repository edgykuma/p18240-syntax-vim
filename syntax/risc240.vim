" Vim syntax file
" Language:     RISC240 Assembler
" Maintainer:   Edric Kusuma <edric.kusuma@gmail.com>
" Last Change:  2019 Mar 25

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

syn match risc240Identifier         "[a-z0-9_]\+"

" In RISC240, immediate values and memory addresses are only defined in hex.
syn match hexNumber                 "\$[0-9a-fA-F]\{1,4}"hs=s+1

syn keyword risc240Todo             contained TODO


syn match risc240Comment            ";.*" contains=risc240Todo

" Assembler directives start with a '.' and may contain upper case (e.g.,
" .ABORT), numbers (e.g., .p2align), dash (e.g., .app-file) and underscore in
" CFI directives (e.g., .cfi_startproc). This will also match labels starting
" with '.', including the GCC auto-generated '.L' labels.
syn match risc240PseudoOp           "\.\%(org\|dw\|equ\)"

syn match risc240Instr              "\<\%(add\|addi\|and\|bra\|brc\|brn\|brz\|brnz\|brv\|li\|lw\|mv\|not\|or\|sll\|slli\|slt\|slti\|sra\|srai\|srl\|srli\|stop\|sub\|sw\|xor\)\>"

syn match risc240Reg                "\<r[0-7]\>"


syn case match

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

" The default methods for highlighting.  Can be overridden later
" hi def link risc240Label          Label
hi def link risc240Identifier       Identifier
hi def link risc240Comment          Comment
hi def link risc240Todo             Todo
hi def link risc240PseudoOp         Statement

hi def link hexNumber               Number

hi def link risc240Instr            Keyword

hi def link risc240Reg              Type


let b:current_syntax = "risc240"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=8
