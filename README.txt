If you want to associate all of your .asm files with the P18240 highlighter,
then you'll want to add this line to your .vimrc:

autocmd BufNewFile,BufRead *.asm set ft=p18240

Remember to remove/comment out this line if you're working with other (non-240)
.asm files.
