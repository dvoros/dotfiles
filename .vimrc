set ai
set number
syntax on

set directory=$HOME/.vimswap//

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" open new windows to the right and below
set splitbelow
set splitright

" Search highlight
set hlsearch

" colorscheme
color torte

" backspace in insert mode (after upgrading to vim8)
set backspace=indent,eol,start
