" Plugins

call plug#begin('~/.local/share/nvim/plugged')

    "Utils
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'tpope/vim-surround'
    Plug 'metakirby5/codi.vim'
    Plug 'raimondi/delimitmate'
    Plug 'junegunn/fzf.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'christoomey/vim-system-copy'
    Plug 'ddollar/nerdcommenter'

    "Autocompletion and Linting
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/syntastic'
    Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'carlitux/deoplete-ternjs'
	Plug 'w0rp/ale'
    Plug 'Shougo/neosnippet.vim'
	Plug 'Shougo/neosnippet-snippets'
	Plug 'davidhalter/jedi-vim'
	Plug 'sirver/ultisnips'
	Plug 'honza/vim-snippets'

    "Interface
    Plug 'Yggdroot/indentLine' 
    Plug 'ryanoasis/vim-devicons'
    Plug 'Shougo/unite.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'metakirby5/codi.vim'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/goyo.vim'

    "Coloschemes
    Plug 'morhetz/gruvbox'

    " Langagues
    Plug 'cespare/vim-toml'
    Plug 'plasticboy/vim-markdown'
    Plug 'elzr/vim-json'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'lepture/vim-jinja'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'lambdalisue/vim-django-support'

call plug#end()

source $HOME/.config/nvim/config/plug/emmet.vim
source $HOME/.config/nvim/config/plug/startify.vim
source $HOME/.config/nvim/config/plug/airline.vim
source $HOME/.config/nvim/config/plug/rainbow.vim
source $HOME/.config/nvim/config/plug/NERDTree.vim
source $HOME/.config/nvim/config/plug/deoplete.vim
source $HOME/.config/nvim/config/plug/ale.vim


"source $HOME/.config/nvim/config/plug/buftabline.vim
