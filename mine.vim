" let g:syntastic_quiet_messages = {"type": "warnings"}
let g:syntastic_ruby_mri_args='-T1 -c'

" automatically reload this file when it's saved
" au BufWritePost mine.vim so ~/.vim/mine.vim

" Fixing vertical and horizontal splits
set splitright
set splitbelow
nnoremap <silent> <leader>hs :split<CR>
nnoremap <silent> <leader>vs :vsplit<CR>
nnoremap <leader>gs :set nosplitbelow<bar>:Gstatus<bar>:set splitbelow<CR>
function BetterHorizontalSplit ()
  let mega_tmp = winsaveview()
  let mega_tmp['lnum'] = mega_tmp['topline'] + 4
  split
  :wincmd k
  call winrestview(mega_tmp)
  :wincmd j
endfunction
nnoremap ,hs :call BetterHorizontalSplit()<CR>

" Enabling cursorlines
set cursorline
" Only have cursorline in current window
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
set cursorcolumn
autocmd WinLeave * set nocursorcolumn
autocmd WinEnter * set cursorcolumn

" Ruby development
nnoremap ,ct :!ctags-bundler

nmap ,bb Obinding.pry<Esc>j
nmap ,b, ?binding.pry<CR>dd``,/

nmap ,rf ?\sit\\|\sspecify\\|describe <CR>$Bhi, :focus<Esc>``,/
nmap ,ru ?, :focus<CR>:s/, :focus//<CR>``,/
nmap ,rua :%s/, :focus//g<CR>

 "---------------
 "vim-slime
 "---------------
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": ":"}
" nnoremap ,re :SlimeSend1 exit<CR>
nnoremap ,rs :SlimeSend1 rspec .<CR>
" nnoremap ,r :SlimeParagraphSend<CR>
" vnoremap ,r :SlimeRegionSend<CR>
" vnoremap ,rl V:SlimeRegionSend<CR>
" vnoremap ,rl V:SlimeRegionSend<CR>


 "---------------
 "vim-easymotion
 "---------------
"  nnoremap \ H:call EasyMotion#WB(0,0)<CR>


" Reselect visual block after indent/outdent
" vnoremap < <gv
" vnoremap > >gv

" Use sane regexes
" nnoremap / /\v
" vnoremap / /\v

" Show Git diff in window split when commiting
" autocmd FileType gitcommit DiffGitCached | wincmd p


"---------------
" sjl / next_motion_mapping.vim
"---------------

" Motion for "next/last object". For example, "din(" would go to the next "()" pair
" and delete its contents.

onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>

function! s:NextTextObject(motion, dir)
  let c = nr2char(getchar())

  if c ==# "b"
      let c = "("
  elseif c ==# "B"
      let c = "{"
  elseif c ==# "d"
      let c = "["
  endif

  exe "normal! ".a:dir.c."v".a:motion.c
endfunction

"---------------
" Enable Alt- mappings in terminal. Drawback: will break last part of nmap ,bb Obinding.pry<Esc>j
" http://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim
"---------------
"
" let c='a'
" while c <= 'z'
"   exec "set <A-".c.">=\e".c
"   exec "imap \e".c." <A-".c.">"
"   let c = nr2char(1+char2nr(c))
" endw
" set timeout ttimeoutlen=50


"---------------
" Merlin for OCaml
"---------------

" :set rtp+=<SHARE_DIR>/ocamlmerlin/vim
" :set rtp+=~/.opam/4.02.3/share/ocamlmerlin/vim
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
let g:syntastic_ocaml_checkers = ['merlin']



"---------------
" Clojure
"---------------

let g:niji_light_colours = [['black', 'black'],
                          \ ['red', 'red3'],
                          \ ['darkyellow', 'orangered3'],
                          \ ['darkgreen', 'orange2'],
                          \ ['blue', 'yellow3'],
                          \ ['darkmagenta', 'olivedrab4'],
                          \ ['red', 'green4'],
                          \ ['darkyellow', 'paleturquoise3'],
                          \ ['darkgreen', 'deepskyblue4'],
                          \ ['blue', 'darkslateblue']]

au BufRead,BufNewFile *.cljx       setlocal filetype=clojure
" command! Piggie :Piggieback (cemerick.austin/exec-env)
" command! Biggie :Piggieback (cemerick.austin/exec-env :exec-cmds ["open" "-ga" "/Applications/Google Chrome.app"])
command! Wiggie :Piggieback (weasel.repl.websocket/repl-env :ip "0.0.0.0" :port 9001)
command! Figwheel :Piggieback! (do (require 'figwheel-sidecar.repl-api) (figwheel-sidecar.repl-api/cljs-repl))

nmap \ <Plug>FireplaceK


let g:rainbow_active = 1
let g:rainbow_conf = {
      \'separately' : {
\  'clojure': { 'ctermfgs':
\                  ['black',
\                  'red',
\                  'darkyellow',
\                  'darkgreen',
\                  'blue',
\                  'darkmagenta',
\                  'red',
\                  'darkyellow',
\                  'darkgreen',
\                  'blue']
\  }
\  }
\}


" \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
" \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
" \   'operators': '_,_',
" \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
" \   'separately': {
" \       '*': {},
" \       'tex': {
" \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
" \       },
" \       'lisp': {
" \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
" \       },
" \       'vim': {
" \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
" \       },
" \       'html': {
" \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
" \       },
" \       'css': 0,
" \   }
" \}

nnoremap ,how :r!howdoi -n3<space>
