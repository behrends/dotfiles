set fuoptions=maxhorz,maxvert " Fullscreen takes up entire screen
macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>  " Command-Return for fullscreen

set guioptions-=T " Start without the toolbar

" Command-T for CommandT
macmenu &File.New\ Tab key=<D-T>
map <D-t> :CommandT<CR>
imap <D-t> <Esc>:CommandT<CR>
" reduce CommandT buffer height
let g:CommandTMaxHeight=20

" https://github.com/jasonm/dotfiles/commit/fbf876a703fa161e46c217c048c3090f1cfd5c4a
" http://stackoverflow.com/questions/762515/vim-remap-key-to-toggle-line-numbering
" http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
function! ToggleRelativeNumber()
  if g:relativenumber == 0
    let g:relativenumber = 1
    set number
    set norelativenumber
  else
    let g:relativenumber = 0
    set nonumber
    set relativenumber
  endif
endfunction
" start with absolute line numbering
let g:relativenumber = 0
:call ToggleRelativeNumber()

map <C-L> :call ToggleRelativeNumber()<cr>

color vividchalk
