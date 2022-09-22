" adds line numbers
set number

" Mouse support
set mouse=a
syntax enable
syntax on

" Plugin manager https://github.com/junegunn/vim-plug
call plug#begin()

" https://github.com/EdenEast/nightfox.nvim
" Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' }

" https://github.com/mhartington/oceanic-next
Plug 'mhartington/oceanic-next'

" https://github.com/itchyny/lightline.vim:
Plug 'itchyny/lightline.vim'

" https://github.com/rmagatti/auto-session
Plug 'rmagatti/auto-session'

" https://github.com/wfxr/minimap.vim
Plug 'wfxr/minimap.vim'

call plug#end()

let g:netrw_banner = 0		" Banner disabled (I)
let g:netrw_liststyle = 3 	" List style = 3 (i)
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15	" 15% window size

" augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
" augroup END

augroup cdpwd
    autocmd!
    autocmd VimEnter * cd $PWD " <------------------ PWD system variable
augroup END

" colorscheme nightfox

if (has("termguicolors"))
 set termguicolors
endif

" Theme
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" Minimap
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1