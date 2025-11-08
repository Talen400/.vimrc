" <--Global-->

set mouse=a
set number
syntax enable
set tabstop=4
set shiftwidth=4

set autoindent
set colorcolumn=81

let mapleader = "\\"

highlight ColorColumn ctermbg=darkgray guibg=darkgray

autocmd FileType c setlocal comments=s1:/*,mb:**,elx:*/

autocmd FileType c setlocal cindent

autocmd FileType c nnoremap <F6> :!norminette %<CR>

nnoremap <F5> :set list!<CR>

set listchars=tab:>-,trail:.,nbsp:.

" commands: PlugInstall

"<--PLUGINS-->

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
Plug 'dense-analysis/ale'

call plug#end()

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <silent> <leader>nr :NERDTreeRefreshRoot<CR>

" ALE config
let g:ale_enabled = 1
let g:ale_linters = {'c': ['gcc']}
let g:ale_c_gcc_options = '-Wall -Wextra -Werror -pedantic -Iinclude'
let g:ale_use_terminal = 0

" Verific
let g:ale_lint_on_text_changed = 'normal'  " Check when type
let g:ale_lint_on_insert_leave = 1         " Check when go out of insert mode
let g:ale_lint_on_save = 1                 " Always checking when save

" Feedback visual clean
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = ' ▶ '
highlight ALEErrorSign ctermfg=red guifg=red
highlight ALEWarningSign ctermfg=yellow guifg=orange
highlight ALEVirtualTextError ctermfg=red guifg=red
highlight ALEVirtualTextWarning ctermfg=yellow guifg=orange

" theme airline
let g:airline_theme='minimalist'
colorscheme codedark
