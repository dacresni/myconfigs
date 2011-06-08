syntax on
set ai
set et
set sw=4
set smarttab

"in makefiles , don't expand tabs to spaces, sence actual tab characters are
"needed
"
""abreviations for Cmacros
:ab #d #define
:ab #i #include
:ab #f #ifdef
:ab #n #ifndef
:ab if__name 'if __name__ == "__main__" 
:ab imp import
"match pairs of angled rackets '< >'
"set matchpairs+=<:>
"
"" automaticly turn on autocompletion
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
autocmd FileType make set noexpandtab
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complet
autocmd FileType c++ set omnifunc=c++complete#Complet

"tab movement"
"map <leader>tn :tabnext<cr>
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove 
"map <tp> :tabprevious
"
""plugin settings
"TagList plugin 
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Auto_Open = 1
let Tlist_Process_File_Alwase = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
map <c-w><c-t> :TlistToggle<cr>

""cscope functions 

"auto close perenthcies
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
autocmd Syntax html,vim inoremap < <lt>><Left>


