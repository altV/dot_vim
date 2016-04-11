" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" -------
" Plugins
" -------
" Mine
Plugin 'luochen1990/rainbow'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'jpalardy/vim-slime'
" Plugin 'skalnik/vim-vroom'
Plugin 'gregsexton/gitv'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-unimpaired'
Plugin 'tommcdo/vim-exchange'
Plugin 'jgdavey/vim-blockle'
" Plugin 'mileszs/ack.vim'
Plugin 'powerman/vim-plugin-ruscmd'

" Languages - Clojure
Plugin 'tagbar'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-slamhound'
" Plugin 'tpope/vim-fireplace'
Plugin 'christoph-frick/vim-fireplace'
Plugin 'honza/vim-clojure-conceal'
" Plugin 'dgrnbrg/vim-redl'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'typedclojure/vim-typedclojure'

Plugin 'tpope/vim-afterimage' " edits images

" Languages
Plugin 'slim-template/vim-slim'

" Languages - OCaml
Plugin 'rgrinberg/vim-ocaml'
Plugin 'the-lambda-church/merlin'
Plugin 'def-lkb/vimbufsync'
Plugin 'yssl/qfenter'

" Text Objects
Plugin 'kana/vim-textobj-user'
Plugin 'argtextobj.vim'
Plugin 'austintaylor/vim-indentobject'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'lucapette/vim-textobj-underscore'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'thinca/vim-textobj-function-javascript'
Plugin 'vim-indent-object'
"------------------------------------

" Navigation
Plugin 'ZoomWin'
Plugin 'christoomey/vim-space'
" Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
" UI Additions
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Rykka/colorv.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'mbbill/undotree'
Plugin 'jszakmeister/vim-togglecursor'
" Commands
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'
Plugin 'milkypostman/vim-togglelist'
Plugin 'mutewinter/swap-parameters'
Plugin 'tpope/vim-abolish'
Plugin 'scratch.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mutewinter/GIFL'
Plugin 'AndrewRadev/switch.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'itspriddle/vim-marked'
Plugin 'HelpClose'
Plugin 'mattn/gist-vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'sk1418/Join'
Plugin 'SirVer/ultisnips'
Plugin 'papanikge/vim-voogle'
Plugin 'benmills/vimux'
Plugin 'jgdavey/vim-turbux'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dsawardekar/portkey'
Plugin 'dsawardekar/ember.vim'
" Automatic Helpers
Plugin 'osyo-manga/vim-anzu'
Plugin 'xolox/vim-session'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mutewinter/vim-autoreadwatch'
Plugin 'yssl/QFEnter'
" Language Additions
"   Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
"   JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
"   HTML
Plugin 'nono/vim-handlebars'
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'
"   TomDoc
Plugin 'mutewinter/tomdoc.vim'
Plugin 'jc00ke/vim-tomdoc'
"   Other Languages
Plugin 'msanders/cocoa.vim'
Plugin 'mutewinter/taskpaper.vim'
Plugin 'mutewinter/nginx.vim'
Plugin 'timcharper/textile.vim'
Plugin 'mutewinter/vim-css3-syntax'
Plugin 'mutewinter/vim-tmux'
Plugin 'plasticboy/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'wavded/vim-stylus'
Plugin 'tpope/vim-cucumber'
Plugin 'chrisbra/csv.vim'
Plugin 'digitaltoad/vim-jade'
" MatchIt
Plugin 'matchit.zip'
" Libraries
Plugin 'L9'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/webapi-vim'
Plugin 'xolox/vim-misc'
Plugin 'rizzatti/funcoo.vim'
