set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'fugitive.vim'
"git changes
NeoBundle 'airblade/vim-gitgutter'
"NeoBundle 'User-Defined-Type-Highlighter'
NeoBundle 'Tagbar'
NeoBundle 'snipMate'
" NeoBundle 'cscope_maps'

NeoBundle 'derekwyatt/vim-protodef'
NeoBundle 'FSwitch'
"colorschemes
NeoBundle '29decibel/codeschool-vim-theme'

"NeoBundle 'easytags.vim'
"depend for easytags
"NeoBundle 'xolox/vim-misc'

NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/Unite.vim'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'Intey/vim-easymotion'
NeoBundle 'haya14busa/vim-easyoperator-line'
NeoBundle 'haya14busa/vim-easyoperator-phrase'
NeoBundle 'The-NERD-tree'
NeoBundle 'VimClojure'
NeoBundle 'paredit.vim'
NeoBundle 'Tabular'
"NeoBundle 'Markdown'
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'node.js'
NeoBundle 'xml.vim'
"NeoBundle 'xsltassistant.vim'
"NeoBundle 'xslhelper.vim'
"NeoBundle 'wiki.vim'
"NeoBundle 'vimgdb'
NeoBundle 'loremipsum'
NeoBundle 'LimitWindowSize'
NeoBundle 'rails.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'bufexplorer.zip'
NeoBundle 'rainbow_parentheses.vim'
"Code analizer for JS
"NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'ProtoDef'

" ================= WEB MAIN ==============
" NeoBundle 'Haml'
" NeoBundle 'hail2u/vim-css3-syntax'
" NeoBundle 'groenewege/vim-less'
" NeoBundle 'Sass'
" ================= Ruby ==============
" NeoBundle 'eruby.vim'
" NeoBundle 'ruby.vim'

" ================= CPP ==============
" NeoBundle 'KabbAmine/vCoolor.vim'
NeoBundle 'Valloric/YouCompleteMe' 
" NeoBundle 'rdnetto/YCM-Generator' " installed with AUR
NeoBundleLazy 'jeaye/color_coded', {
          \ 'build': {
          \     'unix': 'cmake . && make && make install',
          \ },
          \ 'autoload' : { 'filetypes' : ['c', 'cpp', 'h', 'hpp'] },
          \ 'build_commands' : ['cmake', 'make']
      \}
"192Mb!!! What a hell?!
NeoBundle 'jalcine/cmake.vim'
" NeoBundle 'bbchung/clighter'
" NeoBundle 'ctrlp.vim' " Ycm have Goto
" NeoBundle 'Syntastic'
" ================= PYTHON ==============
" Also use Ycm
" NeoBundle 'davidhalter/jedi-vim' "not complete curses window
 "NeoBundle 'Python-mode-klen'

call neobundle#end()
filetype plugin indent on
" check uninstalled plugins
NeoBundleCheck
