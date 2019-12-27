call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'tyrannicaltoucan/vim-deep-space'

" Interface
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine' 
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'ddollar/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'wakatime/vim-wakatime'
Plug 'mhinz/vim-startify'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Miscellaneous
Plug 'metakirby5/codi.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

" Intelisense & Snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'

" Javascript & Web Environment
Plug 'chemzqm/vim-jsx-improve'
Plug 'mattn/emmet-vim'
Plug 'jrmmendes/vim-vue'
Plug 'cakebaker/scss-syntax.vim'

" Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }

call plug#end()

" Load config files for each plugin
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/emmet.vim
source $HOME/.config/nvim/plugins/NERDTree.vim
source $HOME/.config/nvim/plugins/startify.vim
