function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)


function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction


function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction


command! FZFBuffers call fzf#run({
        \ 'source':  reverse(<sid>buflist()),
        \ 'sink':    function('<sid>bufopen'),
        \ 'options': '+m',
        \ 'down':    len(<sid>buflist()) + 2
        \ })


function! FZFMru()
    call fzf#run({
        \ 'source':   v:oldfiles,
        \ 'sink' :   'edit',
        \ 'options': '-m --no-sort',
        \ 'down':    '40%'
        \ })
endfunction
command! FZFMru call FZFMru()


function! FZFGit()
    " Remove trailing new line to make it work with tmux splits
    let directory = substitute(system('git rev-parse --show-toplevel'), '\n$', '', '')
    if !v:shell_error
        lcd `=directory`
        call fzf#run({
            \ 'sink': 'edit',
            \ 'dir': directory,
            \ 'source': 'git ls-files',
            \ 'down': '40%'
            \ })
    else
        FZF
    endif
endfunction
command! FZFGit call FZFGit()


function! s:CompileRST()
   exec '!rst2pdf.sh' shellescape(expand('%:p'))
endfunction
command! CompileRST call jobstart( s:CompileRST() )


function! s:CompileXetex()
   exec '!rubber --module=xelatex' shellescape(expand('%:p'))
endfunction
command! CompileXetex call s:CompileXetex()


function! s:OpenPDF()
   let noext_file =  shellescape(expand('%:p:r'))
   let pdffile = noext_file . '.pdf'
   silent exec '!TMUX= tmux new -d zathura' pdffile
   redraw!
endfunction
command! OpenPDF call s:OpenPDF()


function! s:CompilePython()
   exec '!python' expand('%:p')
endfunction
command! CompilePython call s:CompilePython()
