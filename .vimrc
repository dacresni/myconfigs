syntax on
filetype off "required for vundle
"set ai
set et
set sw=2
set smarttab
""syntax on 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" plugins (via vundler)
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'racer-rust/vim-racer'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'dyng/ctrlsf.vim'

call vundle#end()

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')   
  endif

  call dein#end()
  call dein#save_state()
endif

let g:deoplete#enable_at_startup = 1


filetype plugin indent on
syntax enable

filetype plugin indent on 
""abreviations for Cmacros
:ab #d #define
:ab #i #include
:ab #f #ifdef
:ab #n #ifndef
:ab if__name 'if __name__ == "__main__" 
:ab imp import
"match pairs of angled rackets '< >'
set matchpairs+=<:>
set number relativenumber 
"
" automaticly turn on autocompletion
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
"in makefiles , don't expand tabs to spaces, sence actual tab characters are needed
autocmd FileType make set noexpandtab

""plugin settings

map <c-w><c-t> :TagbarToggle<cr>
map <c-w><c-g> :NERDTreeToggle<cr>

"" vim-latex commnad 

""cscop functions 

"auto close perenthcies
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
autocmd Syntax html,vim inoremap < <lt>><Left>

"gundo
nnoremap <G> :GundoToggle<CR>
"airline enable tabs for buffers
let g:airline#extensions#tabline#enabled = 1
"ale plugin configs 
let b:ale_fixers = ['prettier', 'eslint']
let g:deoplete#enable_at_startup = 1

