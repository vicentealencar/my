"loading unbundle
runtime bundle/vim-unbundle/unbundle.vim

"Defaults
set nowrap
set number
set laststatus=2 " Enables the status line at the bottom of Vim
set statusline=%{GitBranchInfoLoadBranch()}
set listchars=tab:▸\ ,eol:¬
set ts=4 sts=4 sw=4 expandtab
set winheight=5
set winminheight=5
set winheight=9999
set hidden

"ruby
autocmd FileType ruby,eruby let g:loaded_rails=0
autocmd FileType ruby,eruby let g:autoloaded_rails=0
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"JavaScript
autocmd FileType javascript setlocal ts=4
autocmd FileType javascript setlocal sts=4 
autocmd FileType javascript setlocal sw=4
autocmd FileType javascript setlocal expandtab


"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
colorscheme desert


"set initial window size when running in graphic mode
if has("gui_running")
    set lines=999 columns=999
endif

