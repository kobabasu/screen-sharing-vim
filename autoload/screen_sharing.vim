" Vim global plugin for generate ScreenSharing
" Last Change:	2013 Dec 28
" Maintainer:	Keiji Kobayashi <keiji@seeknetusa.com>
" License:	This file is placed in the public domain.

function! screen_sharing#ScreenSharing()
  if has('gui_macvim')
    set guioptions-=r
    set guifont=Bitstream\ Vera\ Sans\ Mono:h32
    set guifontwide=ヒラギノ角ゴ\ StdN\ W2:h32
    set transparency=0
    set showtabline=0
    set laststatus=0
    set wrap
    set linebreak
    set nolist
    set linespace=5
    set nonumber
    set fullscreen
    set fuoptions+=maxhorz,maxvert
    set columns=9999

    hi Normal        guifg=#ffffff guibg=#1d1d1d
    hi NonText       guifg=#1d1d1d guibg=#1d1d1d
    hi VertSplit     guifg=#1d1d1d guibg=#1d1d1d
    hi StatusLine    guifg=#1d1d1d guibg=#1d1d1d
    hi StatusLineNC  guifg=#1d1d1d guibg=#1d1d1d
    hi FoldColumn    guifg=#1d1d1d guibg=#1d1d1d

    vnew
    vnew
    1wincmd w
    vertical resize 12
    3wincmd w
    set winwidth=12
    2wincmd w
    
  else
    echo "Screen-Sharing: MacVim only"
  endif
endfunction
