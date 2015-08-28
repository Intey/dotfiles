set nocompatible

filetype off 
set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle')

source ~/.vundles.vim "plugins with Vundle.
" 
Plugin 'vim_lib'
Plugin 'vim_start'
" Plugin 'vim_plugmanager'
" 
" 
Plugin 'vim_grep'
Plugin 'vim_git'
" 
Plugin 'vim_prj'
Plugin 'vim_template'
" 
let g:clighter_autostart=1

" Plugin 'vimgdb'
" Plugin 'ProtoDef'
" Plugin 'FSwitch'
" 
filetype indent plugin on

colorscheme codeschool

set synmaxcol=200
"next two lines for cpp projects hack: in project directory, will apper 
" .vimrc - project configuration file.
set exrc "use .vimrc in current directory (external)
set secure "down privileges for external .vimrc
set showmatch "for parantheses
set incsearch
set ignorecase
set nowrap
"set smartcase
set guioptions=
set guifont=Meslo\ LG\ L
set wildmode=longest:list,full
set history=100
set guiheadroom=0 "fix gaps
set ruler
set showcmd

set autochdir
set smarttab
set smartindent
set expandtab
set autoindent
"set textwidth=111 "split 1 line longer then 111 to 2 lines.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=110
hi ColorColumn guibg=#151515
hi ColorColumn ctermbg=darkgray
set nu
set rnu
set foldmethod=indent
set foldlevelstart=2
set foldcolumn=0
set noswapfile
set nobackup
set noautoread 
syn on
set wcm=<Tab>
set pastetoggle=<F2> 
map <F3> <Esc>:NERDTree<cr>
nmap <C-a> :tabnew<cr>
map <Silent> <A-=> m`gg=G``zz
map <M-q> c# <C-r>" <Esc>


let g:vim_markdown_folding_disabled=1
let b:match_ignorecase=1

"NERDTree fix width
let g:NERDTreeWinSize=30

"rainbow_parentheses
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

"disable autocomment next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""" EasyMotion
let g:EasyMotion_grouping = 2
let g:EasyMotion_disable_two_key_combo = 1
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_use_smartsign_jp = 1
let g:EasyMotion_keys = 'asdfghjklqwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM'
"==================================== MAPS ====================================
"for easymotion 
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
"change current window 
nmap <A-h> gT
nmap <A-l> gt
nmap <A-k> <C-w>w
"some problem with back move
nmap <A-j> <C-w>W 

nmap <F4> :tab wincmd gf<CR>
nmap <S-F4> :vertical wincmd f<CR>

nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
"easy russian input
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

"add system tags for C++
set tags+=~/.vim/tags/qt4
"build tags from current project
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+plegmfts --fields=+iaSKft --extra=+q .<cr>
nmap <M-S-F1> :tab edit 
map <F1> :tab help 

"let OmniCpp_NamespaceSearch=1
"let OmniCpp_GlobalScopeSearch=0
"let OmniCpp_ShowAccess=1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
set completeopt=menuone,menu,longest
" maps and autocommand for FSwitch and protodef
au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' | let b:fswitchlocs = '.'
au! BufEnter *.hpp let b:fswitchdst = 'cpp,h' | let b:fswitchlocs = '.'
augroup NERDTree
	autocmd!
	autocmd FileType nerdtree set foldlevelstart=10
augroup END
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>of :FSHere<cr>

"unite
let g:unite_enable_start_insert=1
let g:unite_split_rule="botright"
let g:unite_force_overwrite_statusline=0
let g:unite_winheight = 10
let g:unite_candidate_icon = "▷"

"fix for CSS names like vertical-align (vim-css3-syntax)
augroup VimCSS3Syntax
	autocmd!
	autocmd FileType css setlocal iskeyword+=-
augroup END

augroup VimFiles
    autocmd!
    autocmd FileType vim set sw=2
    autocmd FileType vim set ts=2
    autocmd FileType vim set cc=80
    autocmd FileType vim set tw=80
augroup END

"syntastic
" let g:syntastic_enable_signs = 1
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"haskell
" let g:tabular_loaded = 1
"au Bufenter *.hs compiler ghc
" let g:haddock_browser="/usr/bin/chromium"
" let g:ghc="/usr/bin/ghc"

"f! Cabal_build()
"    if g:cabal_dir = ""
"        return;
"    else
"        "like:: exec "!cabal" + expand(cabal_dir, ":p:h")
"endf
"com cabal_b call Cabal_build()
"
"f! Init_cabal()
"    let g:cabal_dir = getcwd()
"endf
"
"f! Close_cabal()
"    let g:cabal_dir = ""
"endf
"
"au BufEnter *.cabal Init_cabal()
"au BufLeave *.cabal Close_cabal()
" let g:haskell_indent_if = 0
" let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"

" let g:clighter_occurences_mode = 0 
" let g:clighter_highlight_blacklist = ['clighterNamespaceRef', 'clighterFunctionDecl', 'clighterFieldDecl', 'clighterDeclRefExprCall', 'clighterMemberRefExprCall', 'clighterMemberRefExprVar', 'clighterNamespace', 'clighterNamespaceRef', 'cligherInclusionDirective', 'clighterVarDecl']
