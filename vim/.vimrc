"loading unbundle
runtime bundle/vim-unbundle/unbundle.vim

"Defaults
set nowrap
set number
set hlsearch
set incsearch
set smartindent
set ignorecase
syntax on

" Displays column and line number at the bottom right corner of the screen
set ruler

if has("unix")
    let g:fullscreen = 0

    function! ToggleFullscreen()
        if g:fullscreen == 1
            let g:fullscreen = 0
            let mod = "remove"
        else
            let g:fullscreen = 1
            let mod = "add"
        endif
        call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
    endfunction

    map <silent> <F11> :call ToggleFullscreen()<CR>
    
    "Disabling backups so that vim does not destroy symlinks on windows
    set nobackup nowritebackup

    " Source the vimrc file after saving it
    if has("autocmd")
      autocmd bufwritepost .vimrc source $MYVIMRC
    endif

    nmap <leader>v :tabedit $MYVIMRC<CR>

    set listchars=tab:▸\ ,eol:¬
endif

set laststatus=2 " Enables the status line at the bottom of Vim
set statusline=%{fugitive#statusline()}


function! SetHorizontalSplitHeight()
    set winheight=5
    set winminheight=5
    set winheight=9999
endfunction

map <silent> <F12> :call SetHorizontalSplitHeight()<CR>

set ts=4 sts=4 sw=4 expandtab
set hidden
set nobackup
set nowritebackup
set noswapfile

"ruby
autocmd FileType ruby,eruby let g:loaded_rails=0
autocmd FileType ruby,eruby let g:autoloaded_rails=0
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"JavaScript and C#
autocmd FileType javascript,cs setlocal ts=4
autocmd FileType javascript,cs setlocal sts=4 
autocmd FileType javascript,cs setlocal sw=4
autocmd FileType javascript,cs setlocal expandtab

"mappings
nmap <silent> <leader>s :set spell!<CR>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
colorscheme desert


"set initial window size when running in graphic mode
if has("gui_running")
    set go-=m go-=T go-=l go-=L go-=r go-=R go-=b go-=F
    set lines=999 columns=999
endif

call SetHorizontalSplitHeight()

