set rtp+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('/home/intey/.vim/bundle'))
" plugin manager
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim'
" Strange helper that works by a can't cover readme
NeoBundle 'Shougo/Unite.vim'

" Old Plugin manager
" NeoBundle 'gmarik/Vundle.vim'

" indent ruler for each tabstop
" NeoBundle 'Yggdroot/indentLine'

" git commands integration
NeoBundle 'fugitive.vim'
"git changes
NeoBundle 'airblade/vim-gitgutter'

" ============== clojure ====================
" NeoBundle 'guns/vim-clojure-static'
" NeoBundle 'reborg/vim-cljrefactor'
" NeoBundle 'tpope/vim-fireplace'
" NeoBundle 'VimClojure'
" NeoBundle 'paredit.vim'



" Side bur. Outliner. Short navigation by classes/methods/fields
NeoBundle 'Tagbar'

" Snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'


" Bottom Airline
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" markdown
NeoBundle 'plasticboy/vim-markdown'

" easymotion
NeoBundle 'Intey/vim-easymotion'
NeoBundle 'haya14busa/vim-easyoperator-line'
NeoBundle 'haya14busa/vim-easyoperator-phrase'

" Files tree editor
NeoBundle 'The-NERD-tree'

" autoindent by columns
NeoBundle 'Tabular'

" html/xml tag fast writer
NeoBundle 'mattn/emmet-vim'

" ===================== xml/xslt ================
" NeoBundle 'xml.vim'
" NeoBundle 'xsltassistant.vim'
" NeoBundle 'xslhelper.vim'

" Insert loremipsum text
NeoBundle 'loremipsum'

" buffers explorer
NeoBundle 'bufexplorer.zip'
" highlight parantheses by pair and nesting.
NeoBundle 'rainbow_parentheses.vim'

" ===================== JS ================
" Code analizer for JS
NeoBundle 'marijnh/tern_for_vim'
"NeoBundle 'heavenshell/vim-jsdoc'
" Next 2 syntax for JSX
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
"NeoBundle 'node.js'
NeoBundle 'heavenshell/vim-jsdoc' " Generate JSDoc to your JavaScript code.
"NeoBundle 'leafgarland/typescript-vim'

" ================= WEB MAIN ==============
NeoBundle 'othree/html5.vim'
NeoBundle 'sukima/xmledit'
NeoBundle 'django.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'groenewege/vim-less'
" NeoBundle 'digitaltoad/vim-jade' " jade html tempalate language
" NeoBundle 'Sass'

" color selector/editor
" NeoBundle 'KabbAmine/vCoolor.vim'

" ================= Ruby ==============
" NeoBundle 'eruby.vim'
" NeoBundle 'ruby.vim'

" ================= C++ ====================
"auto implementation from header file
NeoBundle 'ProtoDef'
NeoBundle 'derekwyatt/vim-protodef'
NeoBundle 'FSwitch'
"NeoBundle 'c.vim'
"NeoBundle 'OmniCppComplete'
" GDB integration for C++
" NeoBundle 'vimgdb'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'rdnetto/YCM-Generator'

"192Mb!!! What a hell?!
" NeoBundle 'jalcine/cmake.vim'
" NeoBundle 'bbchung/clighter'
" NeoBundle 'ctrlp.vim' " Ycm have Goto
" NeoBundle 'Syntastic'

" ================= PYTHON ==============
" Also use Ycm
NeoBundle 'klen/python-mode' " not work with Ycm
" NeoBundle 'Shougo/neocomplete.vim'
" NeoBundle 'Shougo/neocomplcache.vim' " too old.

NeoBundle 'morhetz/gruvbox' " colorscheme
" NeoBundle 'davidhalter/jedi-vim' "not complete curses window
call neobundle#end()
NeoBundleCheck
