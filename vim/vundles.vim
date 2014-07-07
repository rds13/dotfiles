" From https://github.com/jperras/vim-dotfiles
"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Vundle help
""""""""""""""
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" VCS
Bundle 'tpope/vim-fugitive'

" System
Bundle 'mattn/webapi-vim'
Bundle 'vim-scripts/Gist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'rking/ag.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'paradigm/TextObjectify'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" GPG
Bundle 'jamessan/vim-gnupg'

" Syntaxes and such.
Bundle 'tpope/vim-cucumber'
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-liquid'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'othree/html5.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'msanders/cocoa.vim'
Bundle 'empanda/vim-varnish'
Bundle 'itspriddle/vim-jquery'
Bundle 'atourino/jinja.vim'
Bundle 'godlygeek/tabular'

" Snippets
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Python bundles
Bundle 'nvie/vim-flake8'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/python_match.vim'
Bundle 'jmcantrell/vim-virtualenv'

" Ruby specific
Bundle "vim-ruby/vim-ruby"
Bundle 'tpope/vim-endwise'

" Clojure
"Bundle 'guns/vim-clojure-static'
"Bundle 'tpope/vim-foreplay'
"Bundle 'tpope/vim-classpath'

" Java
Bundle 'mikelue/vim-maven-plugin'

" Colorschemes for vim
Bundle 'flazz/vim-colorschemes'

" Fun, but not useful
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'skammer/vim-css-color'
"Bundle 'mgutz/vim-colors'
"Bundle 'ehamberg/vim-cute-python'
"Bundle 'bling/vim-airline'
"Bundle 'chriskempson/base16-vim'
"Bundle 'chreekat/vim-paren-crosshairs'
"Bundle 'laktek/distraction-free-writing-vim.git'
"Bundle 'jacekd/vim-iawriter'
"Bundle 'acarapetis/vim-github-theme'
"Bundle 'Lokaltog/vim-distinguished.git'

" original repos on GitHub
Bundle 'Lokaltog/vim-easymotion'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

