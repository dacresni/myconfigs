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
Plugin 'universal-ctags/ctags'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-dispatch'
Plugin 'rlue/vim-fold-rspec'
Plugin 'mattn/emmet-vim'
Plugin 'nelsyeung/twig.vim'
Plugin 'thoughtbot/vim-rspec'
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
" set number 
"
" automaticly turn on autocompletion
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
"in makefiles , don't expand tabs to spaces, sence actual tab characters are needed
autocmd FileType make set noexpandtab

""plugin settings

map <c-w><c-t> :TagbarToggle<cr>
map <c-w><c-g> :NERDTreeToggle<cr>
map <c-w><c-b> :NERDTreeToggle<cr>
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
let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'
let g:ale_fixers = {'php': ['php-cs-fixer']}
"per buffer fixer
let b:ale_fixers = ['prettier', 'eslint'] 
let g:deoplete#enable_at_startup = 1
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

"let g:fold_rspec_foldenable = 0      " disables folding (toggle with `zi`)
let g:fold_rspec_foldlevel = 2       " sets initial open/closed state of all folds (open unless nested more than two levels deep)
let g:fold_rspec_foldcolumn = 4      " shows a 4-character column on the lefthand side of the window displaying the document's fold structure
let g:fold_rspec_foldclose = 'all'   " closes folds automatically when the cursor is moved out of them (only applies to folds deeper than 'foldlevel')
let g:fold_rspec_foldminlines = 3    " disables closing of folds containing two lines or fewer

