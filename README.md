# RISC240 Vim Syntax Highlighter

**DISCLAIMER:** I am not entirely familiar with vim syntax highlighters. I
merely modified the existing built-in `.asm` highlighter. Please let me know if
I am doing anything egregiously wrong at edric.kusuma@gmail.com.

If you want to associate all of your .asm files with the P18240 highlighter,
then you'll want to add this line to your .vimrc (or create one in your **home
directory** if you don't have one):

```vim
" Skip this if you have a plugin manager
set runtimepath+=/path/to/this/directory/

autocmd BufNewFile,BufRead *.asm set ft=risc240
```
Remember to remove/comment out this line if you're working with other (non-240)
.asm files.
