syntax on
filetype off "required for vundle
set ai
set et
set sw=4
set smarttab
""syntax on 
""
"pathogen, a vim plugin manager
"call pathogen#infect()
"call pathogen#helptags()
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugins (via vundler)
Bundle 'gmark/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'majutsushii/tagbar'
Bundle 'tpope/vim-rails.git'

filetype plugin indent on 
"
""abreviations for Cmacros
:ab #d #define
:ab #i #include
:ab #f #ifdef
:ab #n #ifndef
:ab if__name 'if __name__ == "__main__" 
:ab imp import
"match pairs of angled rackets '< >'
set matchpairs+=<:>
"
"" automaticly turn on autocompletion
"autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
autocmd FileType make set noexpandtab
"in makefiles , don't expand tabs to spaces, sence actual tab characters are needed
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complet
autocmd FileType c++ set omnifunc=c++complete#Complet
autocmd FileType tex let g:tex_conceal="adgm"

"powerline config 
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup


""plugin settings

map <c-w><c-t> :TagbarToggle<cr>

"" vim-latex commnad 

""cscop functions 

"auto close perenthcies
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
autocmd Syntax html,vim inoremap < <lt>><Left>

"gundo
nnoremap <G> :GundoToggle<CR>

"syntastic stuff

let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1
