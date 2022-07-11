" call plug#begin('~/.vim/plugged')
" " Language packs
" Plug 'sheerun/vim-polyglot'
" " Syntastic checker
" Plug 'vim-syntastic/syntastic'
" " Nerdtree
" Plug 'scrooloose/nerdtree'
" " Visualize buffer and current mode
" Plug 'vim-airline/vim-airline'
" " To handle buffer
" Plug 'jeetsukumaran/vim-buffergator'
" " To use git easy way
" Plug 'tpope/vim-fugitive'
" " To comment easy way
" Plug 'tpope/vim-commentary'
" " To change surrounding like brackets, quotes, etc.
" Plug 'tpope/vim-surround'
" " For latex
" Plug 'lervag/vimtex'
" " For coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" " For coc of python
" " Plug 'fannheyward/coc-pyright'
" Plug 'neovim/nvim-lspconfig'
" " " Visualize indent by color
" " Plug 'nathanaelkane/vim-indent-guides'
" " Theme
" Plug 'joshdick/onedark.vim'
" " " For matlab
" " Plug 'daeyun/vim-matlab'
" call plug#end()


" filetype plugin indent on
" syntax on
" highlight Visual term=reverse
" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif
" if (has("autocmd"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white })
"   augroup END
" endif
" colorscheme onedark
set mouse=a
set nu
" set hlsearch
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" set showcmd
" let python_highlight_all=1
" " let g:airline_theme='gruvbox'
" let g:airline_theme='onedark'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tmuxline#enabled = 0
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_python_flake8_args='--ignore=F401,E226,W503,E731,E501,E402'
" let g:syntastic_loc_list_height = 3
" let mapleader=","
" let g:vimtex_view_general_viewer = 'sumatraPDF'
" let g:vimtex_view_general_options = '-reuse-instance @pdf'
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_start_level = 4


" nmap nt <ESC>:NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" au BufNewFile,BufRead *.py
" 	\ setl tabstop=4 |
" 	\ setl softtabstop=4 |
" 	\ setl shiftwidth=4 |
" 	\ setl expandtab |
" 	\ setl autoindent |
" 	\ setl fileformat=unix |
" 	\ setl colorcolumn=80 |
" 	\ highlight ColorColumn ctermbg=0 guibg=lightgrey

" au BufNewFile,BufRead *.m
" 	\ setl tabstop=4 |
" 	\ setl softtabstop=4 |
" 	\ setl shiftwidth=4 |
" 	\ setl expandtab |
" 	\ setl autoindent |
" 	\ setl colorcolumn=76 |
" 	\ highlight ColorColumn ctermbg=0 guibg=lightgrey

" au BufNewFile,BufRead *.tex
" 	\ setl spell spelllang=en_us |
" 	\ setl tabstop=4 |
" 	\ setl softtabstop=4 |
" 	\ setl shiftwidth=4 |
" 	\ setl expandtab |
" 	\ setl autoindent |
