syntax on
filetype off "required for vundle
set ai
set et
set sw=4
set smarttab
""syntax on 
""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins (via vundler)
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-rails.git'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'dgryski/vim-godef'
Plugin 'vim-jp/vim-go-extra'
Plugin 'https://github.com/JarrodCTaylor/vim-qunit-special-blend'
call vundle#end() 
filetype plugin on 
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
"let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jshint']
