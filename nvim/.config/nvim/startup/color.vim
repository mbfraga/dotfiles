" Color of status line

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let &t_8f='u;%lu;%lum'
let &t_8b='u;%lu;%lum'
set termguicolors    " For true colors
set background=dark
let g:gruvbox_italic=1
let g:gruvbox_undercurl=1
let g:gruvbox_guisp_fallback='fg'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_hls_cursor='purple'
let g:gruvbox_improved_warnings=0
colorscheme gruvbox

" LineLight
let g:lightline = {
         \ 'colorscheme': 'gruvbox',
         \ 'active' : {
         \    'left': [ [ 'mode', 'paste'],
         \              [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
         \ },
         \ 'component_function': {
         \  'gitbranch': 'fugitive#head'
         \ },
         \ }


" EOF
