map <F7> :NERDTreeToggle<CR>    

set backspace=2

   "nerdtree-F7, tag-bar-F8, last line-G,first line-gg,linia x- :x, insert mode-i,normal mode-Esc,undo-u,redo- CTRL+r,refresh - :e
   "tab nou - :tabnew nume.in, inchidere tab - :tabclose, switch between tabs - CTRL+PgUp/PgDn sau CTRL+ALT+PgUp/PgDn
   "pentru a vedea map-ing-ul tastelor, scriu :map, in normal mode, CTRL+n si CTRL+p pt up si down
   "pentru autocomplete default  -   CTRL+n in insert mode, si tot CTRL+n pentru a scroll-a intre variante
   " :%s/search_for_this/replace_with_this/    - search whole file and replace
   " :%s/search_for_this/replace_with_this/c   - confirm each replace
   " http://www.cs.swarthmore.edu/help/vim/searching.html
   " pentru a scroll-a mai multe randuri, mai exact, intre randurile goale, 
   " pot folosi shift+square_bracket

" Shortcuts
   " 0 start of line; ^ first non-whitespace                   !important
   " $ end of line                                             !important
   " o open new line below; O open new line above              !important
   " { previous blank line; } next blank line
   " u undo; ^R redo
   " % jump to matching parenthesis/bracket/brace

call pathogen#infect() 

"set smartindent
"filetype plugin indent on         // for curly braces autocomplete
set tabstop=4
set shiftwidth=4
set expandtab

set number

set history=1000
set undolevels=1000
set backupdir=~/.vim-tmp/ "acest director trebuie creat de mana intai
set directory=~/.vim-tmp/swap/  
let g:neocomplcache_enable_at_startup = 1  " pentru autocomplete-ul neocomplcache
nmap <F8> :TagbarToggle<CR>                
										   " tasta F8 pentru TagBar - sa arate functiile

										   



" copy selected text (ctrl-c)
:vmap <C-c> y
" Paste clipboard contents (ctrl-v)
:imap <C-v> <esc>P
"Select all text
:imap  <C-a> <esc>ggVG
" cut selected text (ctrl-x)
:vmap <C-x> x

" collapse function/method            apas t pentru a face collapse la o functie/metoda
:nmap t zfap
"expand function/method               apas y pentru a face expand la o functie/metoda
:nmap y zo


           "Pentru Python
autocmd BufRead *.py set tabstop=4
autocmd BufRead *.py set nowrap
autocmd BufRead *.py set go+=b


     "PENTRU A MERGE SI PYTHON         , se apasa F3 pentru rulare        ,pentru C/C++ este ctrl+F9
map <f3> :w\|!python %<cr>



     "PENTRU JAVA                         ,se apasa F4,apoi trebuie apasat F5
" java compile
map <F4> :call CompileJava()<CR>
func! CompileJava()
	:w
	:!javac "%"
endfunc
" run class
map <F5> :call RunClass()<CR>
func! RunClass()
	:!java -cp "%:p:h" "%:t:r"
endfunc





if has("vms")
	  set nobackup
	else
	  set backup
	endif

set history=200
set ruler
set tabstop=4
set title
colorscheme pablo

"Highlight search
set hls 

if has('mouse')
  set mouse=a
endif

"set complete+=k         " enable dictionary completion
set ruler               " ruler display in status line
set showmode            " show mode at bottom of screen

set display=lastline    " don't display @ with long paragraphs




" Searching
"-------------------------------------------------------------------------------
  set hlsearch            " highlight all search results
  set incsearch           " increment search
  set ignorecase          " case-insensitive search
  set smartcase           " upper-case sensitive search
  set modifiable

            





"
"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax on
set nocp
filetype  indent on
filetype on






" // The switch of the Source Explorer 
nmap <F6> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
" let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_", 
        \ "Source_Explorer" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 
