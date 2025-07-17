" <--Global-->

set number
syntax enable
set tabstop=4
set shiftwidth=4

set autoindent
set colorcolumn=81

highlight ColorColumn ctermbg=darkgray guibg=darkgray

autocmd FileType c setlocal comments=s1:/*,mb:**,elx:*/

autocmd FileType c setlocal cindent

autocmd FileType c nnoremap <F5> :!gcc -Wall -Wextra -Werror % -o test && ./test<CR>

autocmd FileType c nnoremap <F6> :!norminette %<CR>

autocmd FileType c nnoremap <F8> :!gcc -g % -o gdb.out && gdb ./gdb.out<CR>

autocmd FileType c nnoremap <F9> :!gcc -g % -o gdb.out && gdb --tui ./gdb.out<CR>

nnoremap <F7> :set list!<CR>

set listchars=tab:>-,trail:.,nbsp:.

" commands: PlugInstall

"<--PLUGINS-->

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'

call plug#end()

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" theme airline
let g:airline_theme='minimalist'
colorscheme codedark
