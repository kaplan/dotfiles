" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

set antialias                 " MacVim: smooth fonts.
set encoding=utf-8            " Use UTF-8 everywhere.
set guioptions-=T             " Hide toolbar.
set guioptions+=c             " Use console dialogs
"set background=light         " Background.
set background=dark           " Background.
colorscheme solarized         " Color.
set guifont=Menlo:h12         " Font family and font size.
set vb                        " No audible bell

" Uncomment to use.
set guioptions-=r             " Don't show right scrollbar

