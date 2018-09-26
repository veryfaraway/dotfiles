" --- configure syntax highlighting ---

" possible cterm colors:
" black, blue, cyan, gray, green, magenta, red, white, yellow

" possible cterm, gui, and term settings:
" bold, underline, reverse, italic, none

" possible Groups and Colors are shown on this page:
" http://vimdoc.sourceforge.net/htmldoc/syntax.html

colo delek


" --- other vim configuration commands ---

" enable syntax highlighting
syntax on

" show the editing mode on the last line
set showmode

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp


"--- common vim commands i don't use

" i don't use autoindent, but here's how to configure it:
" set autoindent

" you can show line numbers
" set number

" highlight matching search strings
" set hlsearch

" make searches case insensitive
" set ignorecase


" --- vim map (macro) commands ---
map #1 :!more ~/.vi_help^M
map #2 :set number
map #3 :set nonumber
map #4 o<table>^M  <tr>^M    <td>^M    </td>^M  </tr>^M</table>
map #5 o<ul>^M  <li></li>^M</ul>
map #6 o<ul>^M  <li><a href=""></a></li>^M</ul>
