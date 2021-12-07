silent! runtime bundle/vim-unbundle/unbundle.vim

"Defaults
set shiftround
set showmatch
set matchtime=5
set nowrap
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
filetype plugin indent on


"diff helpers
nnoremap <leader>q :diffput<CR>
nnoremap <leader>r :diffget<CR>
nnoremap <leader>w ]c
nnoremap <leader>e [c

"command t settings
set wildignore+=*.o,*.obj,.git,*.exe,*.dll,public/*,distrib/*,tmp/*,env/*,node_modules/*,*.class,*.jar
let g:CommandTWildIgnore=&wildignore . ",*/data" . ",*/__pycache__" .  ",*/env"
let g:CommandTMaxFiles=100000
" ***

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
set statusline=%f
set statusline+=%=
set statusline+=%{fugitive#statusline()}


function! SetHorizontalSplitHeight()
    set winheight=5
    set winminheight=5
    set winheight=9999
endfunction

map <silent> <F12> :call SetHorizontalSplitHeight()<CR>

set ts=2 sts=2 sw=2 expandtab
"set hidden
set nobackup
set nowritebackup
set noswapfile

"Python
set wildignore+=*.pyc
autocmd FileType python setlocal ts=4
autocmd FileType python setlocal sts=4 
autocmd FileType python setlocal sw=4

"mappings
nnoremap <silent> <leader>s :set spell!<CR>
nnoremap <c-H> zH
nnoremap <c-L> zL
nnoremap <silent> <c-k> :noh<CR>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
colorscheme delek


"set initial window size when running in graphic mode
if has("gui_running")
   set go-=m go-=T go-=l go-=L go-=r go-=R go-=b go-=F
   set lines=999 columns=999
   set gfn=ProFont:h11
endif

call SetHorizontalSplitHeight()

"disables the annoying bell
set vb

autocmd FileType * :syntax off

set backspace=2
set backspace=indent,eol,start

"Disable flashing and beeping
set noeb
set novb
set belloff=all

" Enabling rainbow parentheses globally
"let g:rainbow_active = 1
autocmd FileType * RainbowLoad
