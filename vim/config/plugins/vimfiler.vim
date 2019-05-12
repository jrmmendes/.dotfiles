scriptencoding utf-8

" my settings
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_enable_auto_cd = 1

call vimfiler#custom#profile(
            \ 'default',
            \ 'context',
            \ {
            \   'direction': 'rightbelow',
            \	'explorer': 1,
            \	'status': 1,
            \	'find': 1,
            \	'safe': 0,
            \	'winwidth': 30,
            \  	'split': 1
            \ }
            \ )

