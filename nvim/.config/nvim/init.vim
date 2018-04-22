

call plug#begin('~/.config/nvim/plugged')
" most important
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" git wrapper
Plug 'tpope/vim-fugitive'
" surround noun
Plug 'tpope/vim-surround'
" Create comments in code
Plug 'tpope/vim-commentary'
" Replace noun with Register
Plug 'vim-scripts/ReplaceWithRegister'
" Make noun titlecase
Plug 'christoomey/vim-titlecase'
" Tabularize stuff
Plug 'godlygeek/tabular'
" clever-f
Plug 'rhysd/clever-f.vim'
" easymotion
Plug 'easymotion/vim-easymotion'
   "" Turn on case insensitive feature
   let g:EasyMotion_smartcase = 1
" Syntax Checking
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
" sum script
" Plug 'vim-scripts/visSum.vim'
" colorize number formats
Plug 'lilydjwg/colorizer'
" 
" 
" Language-specific
Plug 'lervag/vimtex'
Plug 'sirtaj/vim-openscad'
" Plug 'Rykka/riv.vim' " Significant slowdowns here
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_style_pythonic = 1

" " python stuff
Plug 'majutsushi/tagbar'
"    Plug 'tmhedberg/SimpylFold'
"    Plug 'nvie/vim-flake8'
"    let python_highlight_all=1
" 
" Theme Stuff
Plug 'junegunn/seoul256.vim'
Plug 'romainl/Apprentice'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
" 
" "  NERD tree will be loaded on the first invocation of NERDTreeToggle command
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" "Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" "
" " autocomplete
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" " Plug 'Shougo/deoplete.nvim', { 'for': ['javascript', 'html', 'css', 'python', 'ruby', 'php', 'C', 'C++' ], 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
"Plug 'zchee/deoplete-clang'
"Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/ncm-clang'
"Plug 'Shougo/neoinclude.vim'
"Plug 'Shougo/deoplete.vim'

Plug 'Valloric/YouCompleteMe'
"" EXTERNAL
Plug 'christoomey/vim-tmux-navigator'



" 
" " NOT IN USE
" "" no idea
" ""Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" "" Plug 'kien/ctrlp.vim'
" "" syntax highlighting
" "" Plug 'neomake/neomake'
" "" Add plugins to &runtimepath
" ""Plug 'Valloric/YouCompleteMe'
" ""let g:ycm_autoclose_preview_window_after_completion=1
" """vimwiki
" ""Plug 'vimwiki/vimwiki'
" ""let g:vimwiki_list = [{'path': '~/vimwiki/',
" ""                      \ 'syntax': 'markdown', 'ext': '.md'}]
" "" python stuff
" ""Plug 'vim-scripts/indentpython.vim'
" "
" "
call plug#end()
 


" " vimtex settings
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_compiler_latexmk = { 'options' : [ '-xelatex']}
" " Use deoplete.
"let g:deoplete#enable_at_startup = 0
"autocmd InsertEnter * call deoplete#enable()
""let g:deoplete#ignore_sources = {}
"" "let g:deoplete#ignore_sources._ = ['around']
 

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0


" " Load Custom Settings
source ~/.config/nvim/startup/settings.vim
source ~/.config/nvim/startup/functions.vim
source ~/.config/nvim/startup/mappings.vim
source ~/.config/nvim/startup/color.vim

"EOF
