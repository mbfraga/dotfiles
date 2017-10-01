"======================== General Settings ========================
set clipboard=unnamedplus     " use the clipboard for everything
set cursorline                " highlight current line
set showcmd                   " show last command on bottom right
set ruler                     " show info. of cursor position and document
set wildmenu                  " in autocomplete, show menu on bottom

syntax enable
syntax on
"set term=screen-256color

set synmaxcol=0               " 0 = unlimited (e.g., matching brackets)
set cmdheight=1               " height of command bar
set wrap                      " enable soft wrapping

set completeopt=menu          " mode of autocomplete
set mousemodel=extend         " how mouse (specially right click) behave
set backspace=2               " backspace behavior. 2=delete in insert mode
set number                    " show numbers in lines
set relativenumber            " show numbering relative to cursor position

set enc=utf-8                 " default encoding
set fillchars=vert:│,fold:●         " characters to fill statuslines and 
                                    "     vertical separators

" Tab settings
set expandtab                 " use spaces instead of tabs
set tabstop=3                 " set how many columns to use per tab
set shiftwidth=3              " how many columns text is indented with << >>
set shiftround                " shift when << >> 
"set foldcolumn=1


set linespace=0               " only in gui
set history=5000              " size of history of command to keep
" list listchars - replace whitespace with virtual chars
set list listchars=tab:››,trail:-,extends:>,precedes:<,eol:¬
set tw=79                     " textwidth of document (used by gd)
set cc=+1,+2                  " column to color (+1 after 'textwidth')
set fo-=t                     " don't automatically wrap text when typing

set laststatus=2              " when last window has a status line 2=always
set ffs=unix                  " default file format (EOL, etc)
" set mouse=a


" keep cursor in the center of the terminal(vertically)
let &scrolloff=999-&scrolloff

" search settings
set smartcase                 " override "ignorecase" option if search pattern
                              "     has upper case characters

set incsearch                 " as you type the search, show where it matches
set hlsearch                  " when there is a previous search pattern, 
                              "     highlight all its matches


" Allow hidden buffers
set hidden                    " hide buffers when they get abandoned

" Conceal certain elements (like link code in markdown)
set conceallevel=2            " determine how text with 'conceal' 
                              "     syntax attribute is shown


set backupdir=~/.cache/nvimtmp
set directory=~/.cache/nvimtmp



autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile *.rst setlocal spell spelllang=en_us

" if exists('$TMUX')
"   let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"   let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" else
"   let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"   let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif


"EOF
