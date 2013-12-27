if exists('g:loaded_screen_sharing')
  finish
endif
let g:loaded_screen_sharing = 1

command! ScreenSharing :call screen_sharing#ScreenSharing()
