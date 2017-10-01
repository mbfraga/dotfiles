" Map leader key
let mapleader=','
let g:mapleader=','
let maplocalleader='//'

" Unmap arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>


" Set to auto read when a file is changed from the outside
   set autoread

" Quicksave command
   nmap <leader>w :w<cr>
" Save with Ctrl-s, for the sake of random people opening vim on my laptop
   nmap <C-s> :w<cr>

" Quick pairs
   imap <leader>' ''<ESC>i
   imap <leader>" ""<ESC>i
   imap <leader>( ()<ESC>i
   imap <leader>[ []<ESC>i

" NerdTree
   nmap <leader>n :NERDTreeToggle<CR>

" CtrlP
   " map <leader>f :CtrlPCurWD<CR>

" TagBar
   nmap <F8> :TagbarToggle<CR>

" Easy movement between buffers
   map <Leader>bp <esc>:bp<CR>
   map <Leader>bn <esc>:bn<CR>
   map <Leader>bd <esc>:bd<CR>
" nice mappings for managing buffers
   map <Leader>ls <esc>:ls<CR>
   map <Leader>bb <esc>:buffers<CR>

" Easy copy/paste between buffers
   vmap <Leader>y "+y
   nmap <Leader>p "+p

" expand current directory when opening a new file
" this allows me to change the current working directory and esily open
" several files in it
"   map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
"   map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
"   map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
"   map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Map sort function to a key
vnoremap <Leader>s :sort<CR>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Folding
" Enable folding with the spacebar
nnoremap <space> za
nnoremap <space>o zA

" YouCompleteMe
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Filetype specific mappings
if has("autocmd")
   autocmd FileType rst nmap <silent> <leader>s :set spell!<CR>
   autocmd FileType rst nmap <leader>u= :Underline =<CR>
   autocmd FileType rst nmap <leader>u* :Underline *<CR>
   autocmd FileType rst nmap <leader>uu :Underline =<CR>
   autocmd FileType rst nmap <leader>u- :Underline<CR>
   autocmd FileType tex nmap <F5> :CompileXetex<CR>
"   autocmd FileType rst nmap <F5> :CompileRST<CR>
"   autocmd FileType rst nmap <F6> :OpenPDF<CR>
"   autocmd FileType python nmap <F5> :CompilePython<CR>
endif

" Open markdown files with Firefox.
autocmd BufEnter *.md exe 'noremap <F5> :!firefox %:p<CR>'

" fzf
   nnoremap <leader>t :<C-u>FZF<cr>
   nnoremap <leader>f :<C-u>FZFMru<cr>
   nnoremap <leader>e :<C-u>FZFBuffers<cr>
   " In Neovim, you can set up fzf window using a Vim command
   "let g:fzf_layout = { 'window': 'enew' }
   "let g:fzf_layout = { 'window': '-tabnew' }
   "let g:fzf_layout = { 'window': '10split enew' }
   " Enable per-command history.
   " CTRL-N and CTRL-P will be automatically bound to next-history and
   " previous-history instead of down and up. If you don't like the change,
   " explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
   let g:fzf_history_dir = '~/.local/share/fzf-history'

" Denite
   " nnoremap <leader>t :<C-u>Denite -buffer-name=files file_rec<cr>
   " nnoremap <leader>f :<C-u>Denite -buffer-name=files file<cr>
   " nnoremap <leader>r :<C-u>Denite -buffer-name=files file<cr>
   " nnoremap <leader>u :<C-u>Denite -buffer-name=files file<cr>
   " nnoremap <leader>y :<C-u>Denite -buffer-name=files file<cr>
   " nnoremap <leader>e :<C-u>Denite -buffer-name=files file<cr>
