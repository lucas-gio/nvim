" adds line numbers
set number

" Mouse support
set mouse=a
syntax enable
syntax on

" https://github.com/junegunn/vim-plug: Plugin manager
call plug#begin()

" https://github.com/mhartington/oceanic-next: Theme
Plug 'mhartington/oceanic-next'

" https://github.com/itchyny/lightline.vim: Status line
Plug 'itchyny/lightline.vim'

" https://github.com/mhinz/vim-startify: Start page
Plug 'mhinz/vim-startify'

" https://vimawesome.com/plugin/vim-signify: uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).
Plug 'mhinz/vim-signify'

" https://vimawesome.com/plugin/comfortable-motion-vim: Better experience when scroll in file.
Plug 'yuttie/comfortable-motion.vim'

" https://vimawesome.com/plugin/scrollbar-nvim: Scrollbar
Plug 'Xuyuanp/scrollbar.nvim'

call plug#end()

let g:netrw_banner = 0		" Banner disabled (I)
let g:netrw_liststyle = 3 	" List style = 3 (i)
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15	" 15% window size

augroup cdpwd
    autocmd!
    autocmd VimEnter * cd $PWD " <------------------ PWD system variable
augroup END

if (has("termguicolors"))
 set termguicolors
endif

" Theme
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" Comfortable-motion plugin
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
let g:comfortable_motion_friction = 320.0	" <---------------- Time of motion
let g:comfortable_motion_air_drag = 2.0		" <---------------- Resistance to scroll

" Scrollbar
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end