" Don't try to emulate vi
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" set path to search recursively from root folders
set path+=**

" Display all matching files with tab-complete
set wildmenu

" Display highlights while searching
set hlsearch

" Netrw File Browser
let g:netrw_banner=0          " disable file banner
let g:netrw_browse_split=4    " opens in prior window
let g:netrw_altv=1            " opens splits to the right
let g:netrw_liststyle=3       " tree view
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'
