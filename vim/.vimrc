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

"loading unbundle
silent! runtime bundle/vim-unbundle/unbundle.vim

augroup rainbow_parenthesis
    autocmd FileType * :RainbowParenthesesLoadRound
    autocmd FileType * :RainbowParenthesesLoadSquare
    autocmd FileType * :RainbowParenthesesLoadBraces
    autocmd FileType * :RainbowParenthesesLoadChevrons
    autocmd FileType * :RainbowParenthesesToggle
augroup END

" C# Abbreviations
augroup cs_abbrev
    " Class definitions
    autocmd FileType cs :iabbrev <buffer> pc! public class
    autocmd FileType cs :iabbrev <buffer> pric! private class
    autocmd FileType cs :iabbrev <buffer> proc! protected class
    autocmd FileType cs :iabbrev <buffer> ic! internal class
    " *******

    " static definitions
    autocmd FileType cs :iabbrev <buffer> pss! public static string
    autocmd FileType cs :iabbrev <buffer> psv! public static void
    autocmd FileType cs :iabbrev <buffer> psi! public static int
    autocmd FileType cs :iabbrev <buffer> psui! public static uint
    autocmd FileType cs :iabbrev <buffer> pstc! public static

    autocmd FileType cs :iabbrev <buffer> iss! internal static string
    autocmd FileType cs :iabbrev <buffer> isv! internal static void
    autocmd FileType cs :iabbrev <buffer> isi! internal static int
    autocmd FileType cs :iabbrev <buffer> isui! internal static uint
    autocmd FileType cs :iabbrev <buffer> istc! internal static

    autocmd FileType cs :iabbrev <buffer> pross! protected static string
    autocmd FileType cs :iabbrev <buffer> prosv! protected static void
    autocmd FileType cs :iabbrev <buffer> prosi! protected static int
    autocmd FileType cs :iabbrev <buffer> prosui! protected static uint
    autocmd FileType cs :iabbrev <buffer> prostc! protected static

    autocmd FileType cs :iabbrev <buffer> priss! private static string
    autocmd FileType cs :iabbrev <buffer> prisv! private static void
    autocmd FileType cs :iabbrev <buffer> prisi! private static int
    autocmd FileType cs :iabbrev <buffer> prisui! private static uint
    autocmd FileType cs :iabbrev <buffer> pristc! private static
    "***

    " Const definitions
    autocmd FileType cs :iabbrev <buffer> pcs! public const string
    autocmd FileType cs :iabbrev <buffer> pci! public const int
    autocmd FileType cs :iabbrev <buffer> pcui! public const uint
    
    autocmd FileType cs :iabbrev <buffer> prics! private const string
    autocmd FileType cs :iabbrev <buffer> prici! private const int
    autocmd FileType cs :iabbrev <buffer> pricui! private const uint

    autocmd FileType cs :iabbrev <buffer> procs! protected const string
    autocmd FileType cs :iabbrev <buffer> proci! protected const int
    autocmd FileType cs :iabbrev <buffer> procui! protected const uint

    autocmd FileType cs :iabbrev <buffer> ics! internal const string
    autocmd FileType cs :iabbrev <buffer> ici! internal const int
    autocmd FileType cs :iabbrev <buffer> icui! internal const uint
    " *****

    " Variable/attribute definition
    autocmd FileType cs :iabbrev <buffer> ps! public string
    autocmd FileType cs :iabbrev <buffer> pi! public int
    autocmd FileType cs :iabbrev <buffer> pui! public uint
    autocmd FileType cs :iabbrev <buffer> pv! public void

    autocmd FileType cs :iabbrev <buffer> is! internal string
    autocmd FileType cs :iabbrev <buffer> ii! internal int
    autocmd FileType cs :iabbrev <buffer> iui! internal uint
    autocmd FileType cs :iabbrev <buffer> iv! internal void

    autocmd FileType cs :iabbrev <buffer> pros! protected string
    autocmd FileType cs :iabbrev <buffer> proi! protected int
    autocmd FileType cs :iabbrev <buffer> proui! protected uint
    autocmd FileType cs :iabbrev <buffer> prov! protected void

    autocmd FileType cs :iabbrev <buffer> pris! private string
    autocmd FileType cs :iabbrev <buffer> prii! private int
    autocmd FileType cs :iabbrev <buffer> priui! private uint
    autocmd FileType cs :iabbrev <buffer> priv! private void
    " ****

    autocmd FileType cs :iabbrev <buffer> itn int
    autocmd FileType cs :iabbrev <buffer> uitn uint
    autocmd FileType cs :iabbrev <buffer> strnig string
    autocmd FileType cs :iabbrev <buffer> srting string
    autocmd FileType cs :iabbrev <buffer> strign string
    autocmd FileType cs :iabbrev <buffer> viod void
    autocmd FileType cs :iabbrev <buffer> vodi void
augroup END

"diff helpers
nnoremap <leader>q :diffput<CR>
nnoremap <leader>r :diffget<CR>
nnoremap <leader>w ]c
nnoremap <leader>e [c

"command t settings
set wildignore+=*.o,*.obj,.git,*.exe,*.dll,public\*,distrib\*,tmp\*
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

set ts=4 sts=4 sw=4 expandtab
set hidden
set nobackup
set nowritebackup
set noswapfile

"ruby
autocmd FileType ruby,eruby setlocal ts=2
autocmd FileType ruby,eruby setlocal sts=2 
autocmd FileType ruby,eruby setlocal sw=2
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

"Python
set wildignore+=*.pyc

"mappings
nnoremap <silent> <leader>s :set spell!<CR>
nnoremap <c-H> zH
nnoremap <c-L> zL
nnoremap <silent> <c-k> :noh<CR>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
colorscheme desert


"set initial window size when running in graphic mode
if has("gui_running")
    set go-=m go-=T go-=l go-=L go-=r go-=R go-=b go-=F
    set lines=999 columns=999
endif

call SetHorizontalSplitHeight()

autocmd FileType * :syntax off

