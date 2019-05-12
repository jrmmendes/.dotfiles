"[[Dein]]
if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=/home/jrmmendes/.dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/jrmmendes/.dein/')
    call dein#begin('/home/jrmmendes/.dein/')

    " Let dein manage dein
    " Required:
    call dein#add('/home/jrmmendes/.dein//repos/github.com/Shougo/dein.vim')

    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('flazz/vim-colorschemes')

    " < Libraries  
    call dein#add('junegunn/fzf.vim') " Fuzzy finder
    call dein#add('tpope/vim-fugitive') " Git/Github

    " < Interface
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('Xuyuanp/nerdtree-git-plugin')
    call dein#add('wsdjeg/dein-ui.vim')
    call dein#add('Shougo/unite.vim')
    call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
    call dein#add('morhetz/gruvbox')
    call dein#add('tpope/vim-eunuch') " Unix Commands
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('shougo/vimfiler.vim')
    call dein#add('scrooloose/nerdtree')
    call dein#add('metakirby5/codi.vim')
    " Plugin 'ap/vim-buftabline'
    call dein#add('mhinz/vim-startify')
    call dein#add('mhinz/vim-signify')
    call dein#add('junegunn/goyo.vim')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('raimondi/delimitmate')
    call dein#add('gorodinskiy/vim-coloresque')
    call dein#add('christoomey/vim-system-copy')

    " < General Code
    call dein#add('mattn/emmet-vim')
    " call dein#add('valloric/youcompleteme')
    call dein#add('davidhalter/jedi-vim')
    call dein#add('scrooloose/syntastic')
    call dein#add('ddollar/nerdcommenter')
    call dein#add('w0rp/ale'     )
    call dein#add('nathanaelkane/vim-indent-guides')
    call dein#add('tpope/vim-surround')
    call dein#add('sirver/ultisnips')
    call dein#add('honza/vim-snippets')
    call dein#add('apalmer1377/factorus')
    " Plugin 'eiiches/vim-rainbowbrackets'
    call dein#add('luochen1990/rainbow')
    " Plugin 'ambv/black'

    " < Themes
    call dein#add('liuchengxu/space-vim-dark')
    call dein#add('mhartington/oceanic-next')
    call dein#add('ashfinal/vim-colors-violet')

    " < Python
    " Plugin 'nvie/vim-flake8'

    " < Django
    call dein#add('lambdalisue/vim-django-support')

    " < Languages
    call dein#add('cespare/vim-toml')
    call dein#add('plasticboy/vim-markdown')
    call dein#add('elzr/vim-json')
    call dein#add('ekalinin/dockerfile.vim')
    call dein#add('cakebaker/scss-syntax.vim')
    call dein#add('lepture/vim-jinja')

    " < Node.js
    call dein#add('myhere/vim-nodejs-complete')
    call dein#add('pangloss/vim-javascript')
    call dein#add('briancollins/vim-jst')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

"[[Remaps]]
nnoremap <C-q> :NERDTree <CR>
nnoremap <C-a> :e $MYVIMRC <CR>
nnoremap <C-h> :bprevious <CR>
nnoremap <C-l> :bnext <CR>
nnoremap <C-d> :bd <CR>
nnoremap <A-left> :tabp <CR>
nnoremap <A-right> :tabn <CR>
nnoremap <A-up> :tabl <CR>

"[[Autocmds]]
fun! Start()
    " Don't run if: we have commandline arguments, we don't have an empty
    " buffer, if we've not invoked as vim or gvim, or if we'e start in insert mode
    if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
        return
    endif

    " ... and set some options for it
    setlocal
        \ bufhidden=wipe
        \ buftype=nofile
        \ nobuflisted
        \ nocursorcolumn
        \ nocursorline
        \ nolist
        \ nonumber
        \ noswapfile
        \ norelativenumber

    " Now we can just write to the buffer, whatever you want.
    Startify
    " No modifications to this buffer
    setlocal nomodifiable nomodified

    " When we go to insert mode start a new buffer, and start insert
    nnoremap <buffer><silent> e :enew<CR>
    nnoremap <buffer><silent> i :enew <bar> startinsert<CR>
    nnoremap <buffer><silent> o :enew <bar> startinsert<CR>
endfun

" Run after "doing all the startup stuff"
autocmd VimEnter * call Start()

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" autocmd VimEnter * VimFiler -explorer

"[[NERDTree]]
let NERDTreeQuitOnOpen = 1

"[[Ale]]
let b:ale_linters = ['flake8','eslinter']

"[[Tweaks]]
set background=dark
colorscheme gruvbox
set guifont=FireCode:h12
" disable tabline
set showtabline=0
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" keep buffer of lines above and below cursor
set scrolloff=5
" display incomplete commands
set showcmd
set textwidth=80
set hidden

"[[Airline]]
let g:airline_powerline_fonts = 1
let g:Powerline_sybols = 'unicode'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_theme='gruvbox'

let g:airline_symbols = {}
" Unicode simbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr= ''

let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffers_label = 'BUFFERS'
let g:airline#extensions#tabline#tabs_label = 'TABS'

"[[FZF]]
set rtp+=~/.fzf " fzf config 

"[[Ultsnips]]
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"[[General]]
set number
au BufNewFile,BufRead *.njk ft=jinja
" autocmd BufWritePre *.py execute ':Black'
set foldmethod=manual

"[[External Plugins]]
source $HOME/.config/nvim/config/plugins/emmet.vim
source $HOME/.config/nvim/config/plugins/buftabline.vim
source $HOME/.config/nvim/config/plugins/startify.vim

"[[ NERDTree ]]
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "right"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : 'I',
    \ "Unknown"   : "?"
    \ }
