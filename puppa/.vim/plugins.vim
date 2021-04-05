call plug#begin(expand('~/.vim/plugins/'))

Plug 'tpope/vim-fugitive'
"git changes
Plug 'airblade/vim-gitgutter'
Plug 'preservim/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'morhetz/gruvbox'

"Plug 'easytags.vim'
"depend for easytags
"Plug 'xolox/vim-misc'

Plug 'Shougo/vimproc.vim'
"Plug 'Shougo/Unite.vim'
Plug 'Lokaltog/vim-powerline'
Plug 'plasticboy/vim-markdown'
" Plug 'Markdown'
Plug 'Intey/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'preservim/nerdtree'

" Plug 'VimClojure'
Plug 'vim-scripts/paredit.vim'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'

"Plug 'xsltassistant.vim'
"Plug 'xslhelper.vim'

"Plug 'loremipsum'
" Plug 'LimitWindowSize'
"Plug 'bufexplorer.zip'
"Plug 'rainbow_parentheses.vim'


" ================= CPP ==============
" Plug 'KabbAmine/vCoolor.vim'
Plug 'derekwyatt/vim-protodef'
" Plug 'FSwitch'
" Plug 'ProtoDef'
" Plug 'ycm-core/YouCompleteMe' 
" Plug 'rdnetto/YCM-Generator' " installed with AUR
" PlugLazy 'jeaye/color_coded', {
"           \ 'build': {
"           \     'unix': 'cmake . && make && make install',
"           \ },
"           \ 'autoload' : { 'filetypes' : ['c', 'cpp', 'h', 'hpp'] },
"           \ 'build_commands' : ['cmake', 'make']
"       \}
"192Mb!!! What a hell?!
" Plug 'jalcine/cmake.vim'
" Plug 'bbchung/clighter'
" Plug 'ctrlp.vim' " Ycm have Goto
" Plug 'Syntastic'
" ================= PYTHON ==============
" Also use Ycm
" Plug 'davidhalter/jedi-vim' "not complete curses window
" Plug 'Python-mode-klen'
Plug 'python-mode/python-mode'

" ================= WEB MAIN ==============
" Plug 'Haml'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'groenewege/vim-less'
" Plug 'Sass'
 " =============== JavaScript ===========
" Plug 'node.js'
"Code analizer for JS
"Plug 'marijnh/tern_for_vim'
 " ============== PlantUML ================
 Plug 'aklt/plantuml-syntax'
 Plug 'scrooloose/vim-slumlord'

" autocmd FileType jsx PlugSource vim-jsx
" autocmd FileType js,jsx PlugSource vim-jade,vim-javascript,vim-jsdoc

" ================ HASKELL ==================
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ================ ALLOY TOOLS ==============
Plug 'runoshun/vim-alloy'

call plug#end()
