set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'fugitive.vim'
"git changes
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Tagbar'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

NeoBundle 'morhetz/gruvbox'

"NeoBundle 'easytags.vim'
"depend for easytags
"NeoBundle 'xolox/vim-misc'

NeoBundle 'Shougo/vimproc.vim'
"NeoBundle 'Shougo/Unite.vim'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'plasticboy/vim-markdown'
" NeoBundle 'Markdown'
NeoBundle 'Intey/vim-easymotion'
NeoBundle 'haya14busa/vim-easyoperator-line'
NeoBundle 'haya14busa/vim-easyoperator-phrase'
NeoBundle 'The-NERD-tree'
" NeoBundle 'VimClojure'
NeoBundle 'paredit.vim'
NeoBundle 'Tabular'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'xml.vim'

"NeoBundle 'xsltassistant.vim'
"NeoBundle 'xslhelper.vim'

NeoBundle 'loremipsum'
" NeoBundle 'LimitWindowSize'
NeoBundle 'bufexplorer.zip'
NeoBundle 'rainbow_parentheses.vim'


" ================= CPP ==============
" NeoBundle 'KabbAmine/vCoolor.vim'
NeoBundle 'derekwyatt/vim-protodef'
NeoBundle 'FSwitch'
NeoBundle 'ProtoDef'
NeoBundle 'Valloric/YouCompleteMe' 
" NeoBundle 'rdnetto/YCM-Generator' " installed with AUR
" NeoBundleLazy 'jeaye/color_coded', {
"           \ 'build': {
"           \     'unix': 'cmake . && make && make install',
"           \ },
"           \ 'autoload' : { 'filetypes' : ['c', 'cpp', 'h', 'hpp'] },
"           \ 'build_commands' : ['cmake', 'make']
"       \}
"192Mb!!! What a hell?!
" NeoBundle 'jalcine/cmake.vim'
" NeoBundle 'bbchung/clighter'
" NeoBundle 'ctrlp.vim' " Ycm have Goto
" NeoBundle 'Syntastic'
" ================= PYTHON ==============
" Also use Ycm
" NeoBundle 'davidhalter/jedi-vim' "not complete curses window
" NeoBundle 'Python-mode-klen'
" NeoBundle 'python-mode'

" ================= WEB MAIN ==============
" NeoBundle 'Haml'
" NeoBundle 'hail2u/vim-css3-syntax'
" NeoBundle 'groenewege/vim-less'
" NeoBundle 'Sass'
 " =============== JavaScript ===========
" NeoBundle 'node.js'
"Code analizer for JS
"NeoBundle 'marijnh/tern_for_vim'
 NeoBundleLazy 'vim-jade'
 NeoBundle 'vim-javascript'
 NeoBundle 'vim-jsdoc'
 NeoBundle 'vim-jsx'
 NeoBundleLazy 'vim-less'

 " ============== PlantUML ================
 NeoBundle 'aktl/plantuml-syntax'
 NeoBundle 'scrooloose/vim-slumlord'

" autocmd FileType jsx NeoBundleSource vim-jsx
" autocmd FileType js,jsx NeoBundleSource vim-jade,vim-javascript,vim-jsdoc


call neobundle#end()
filetype plugin indent on
" check uninstalled plugins
NeoBundleCheck
