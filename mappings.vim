" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","
let maplocalleader = "\\"

" ---------------
" Regular Mappings
" ---------------

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :
" nnoremap : ; " hell to use in map to command, yeah.
" vnoremap : ; " hell to use in map to command, yeah.

" Yank entire buffer with gy
nnoremap gy :%y+<cr>

" Select entire buffer
nnoremap vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Add line splitting instead of doc lookup
nnoremap K a<CR><Esc>k$
vnoremap K k

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" ---------------
" Window Movement
" ---------------
nnoremap <silent> gh :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> gj :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> gk :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> gl :WriteBufferIfNecessary<CR>:wincmd l<CR>

" ---------------
" Window Movement
" ---------------

" Here's a visual guide for moving between window splits.
"   4 Window Splits
"   --------
"   g1 | g2
"   ---|----
"   g3 | g4
"   -------
"
"   6 Window Splits
"   -------------
"   g1 | gt | g2
"   ---|----|----
"   g3 | gb | g4
"   -------------
" Upper left window
nnoremap <silent> g1 :wincmd t<CR>
" Upper right window
nnoremap <silent> g2 :wincmd b<Bar>:wincmd k<CR>
" Lower left window
nnoremap <silent> g3 :wincmd t<Bar>:wincmd j<CR>
" Lower right window
nnoremap <silent> g4 :wincmd b<CR>

" Top Middle
nnoremap <silent> gt :wincmd t<Bar>:wincmd l<CR>
" Bottom Middle
nnoremap <silent> gb :wincmd b<Bar>:wincmd h<CR>


" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" ---------------
" Modifer Mappings
" ---------------

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Easier Scrolling (think j/k with left hand)
" All variations are mapped for now until I get used to one
" C/M/D + d (page up)
" C/M/D + f (page down)
nnoremap <C-j> 15gjzz
nnoremap <C-k> 15gkzz
vnoremap <C-j> 15gjzz
vnoremap <C-k> 15gkzz

" ---------------
" Insert Mode Mappings
" ---------------

" ---------------
" Leader Mappings
" ---------------

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" Toggle spelling mode with ,s
nnoremap <silent> <leader>s :set spell!<CR>

" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>cul :normal "lyy"lpwv$r-^"lyyk"lP<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Format a json file with Python's built in json.tool.
" from https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
nnoremap <leader>jt <Esc>:%!underscore print<CR><Esc>:set filetype=json<CR>
nnoremap <leader>jts <Esc>:%!underscore print --strict<CR><Esc>:set filetype=json<CR>

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" Close the current window
nnoremap <silent> <leader>sc :close<CR>
" ---------------
" Typo Fixes
" ---------------

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @q

" Toggle paste mode with F5
nnoremap <silent> <F5> :set paste!<CR>

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>
