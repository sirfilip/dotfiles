set nocompatible

execute pathogen#infect()

syntax on
set ignorecase
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
set smartindent
set wildmenu
set wrap
set hlsearch
set showcmd
set history=200
set autoread
set scrolloff=5
set clipboard=unnamed
set mouse=a
set laststatus=2
set ruler
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xls
" set relativenumber

filetype plugin indent on 

inoremap jk <esc>
nnoremap <silent> <Right> :bn<cr>
nnoremap <silent> <Left> :bp<cr>
nnoremap <silent> <Up> :cn<cr>
nnoremap <silent> <Down> :cp<cr>

" show tabs and spaces
" set list!
set listchars=tab:>.,trail:.,extends:\#,nbsp:.,eol:$
if has('gui_running')
  set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
else
  set listchars=tab:>.,trail:.,extends:\#,nbsp:.
endif

" autoformat on save
" autocmd BufWritePre * :normal gg=G

if exists('$TMUX')
  set termguicolors
else
  set t_Co=256
endif
colorscheme vividchalk

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

