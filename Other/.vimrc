:set number relativenumber
:set ruler

:hi CursolLineNR ctermfg=red

:augroup numbertoggle
:	autocmd!
:	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:	autocmd BufLeave,FocusLost,InsertEnter 	 * set norelativenumber
:	autocmd ColorScheme * hi CursorLineNR ctermfg=red
:augroup END

:highlight LineNr ctermfg=darkgrey
:colo desert 
:syntax on
