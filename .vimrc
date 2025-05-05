" Line numbers
set number
set relativenumber

" Turn off error
set noerrorbells
set novisualbell
set t_vb=

" Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Syntax
syntax on
filetype plugin indent on
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme nightfly

" Line wrapping
set nowrap

" Search settings
set ignorecase
set smartcase

" Cursor line
set cursorline

" Appearance
set termguicolors
set background=dark
set signcolumn=yes

" Backspace behavior
set backspace=indent,eol,start

" Clipboard
set clipboard+=unnamedplus

" Split window behavior
set splitright
set splitbelow
set splitbelow

" General Keymaps
" Map semicolon to colon in normal mode
nnoremap ; :

" Yank into clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" <leader>ff: Fuzzy file search
nnoremap <leader>ff :Files<CR>

" <leader>fb: Fuzzy search within buffer
nnoremap <leader>fb :Buffers<CR>

" <leader>ft: ctag search 
nnoremap <leader>ft :Tags<CR>

" <leader>fs: Ripgrep search for word (normal mode)
nnoremap <leader>fs :RG<CR>

" <leader>fs: Ripgrep search for selected text (visual mode)
vnoremap <leader>fs :<C-u>execute 'Rg ' . getreg('"')<CR>

" vim wiki
" Set the directory where your wiki pages will be stored
let g:wiki_root = expand('~/wiki/')

" Set wiki syntax and file extensions
let g:wiki_filetypes = ['md', 'wiki']

" Enable global mappings (optional)
let g:wiki_global_mappings = 1

" Enable links to markdown files
let g:wiki_link_extension = '.md'
