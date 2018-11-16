# P18240 Vim Syntax Highlighter

If you want to associate all of your .asm files with the P18240 highlighter,
then you'll want to add this line to your .vimrc (or create one in your **home
directory** if you don't have one):

```vim
" Skip this if you have a plugin manager
set runtimepath+=/path/to/this/directory/

autocmd BufNewFile,BufRead *.asm set ft=p18240
```
Remember to remove/comment out this line if you're working with other (non-240)
.asm files.
