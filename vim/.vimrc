syntax on
colorscheme habamax
" colorscheme desert

highlight Normal ctermbg=NONE guibg=NONE
highlight NormalFloat ctermbg=NONE guibg=NONE

" Leader
let mapleader = " "

" General options
set nobackup
set clipboard=unnamedplus
set cmdheight=1
set completeopt=menuone,noselect
set conceallevel=0
set fileencoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set splitbelow
set splitright
set noswapfile
set termguicolors
set undofile
set updatetime=300
set nowritebackup
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set number
set relativenumber
set numberwidth=4
set signcolumn=no
set nowrap
set scrolloff=8
set sidescrolloff=8
set laststatus=2
set colorcolumn=80
set textwidth=80
set guicursor=

" History
set history=100

" Format options
set formatoptions-=t
set formatoptions+=q

" Netrw
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Keymaps
nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>

" shift + y
nnoremap Y yy

" ==========================
" Netrw Toggle Function
" ==========================
function! ToggleExplorer()
    if &filetype ==# 'netrw'
        if exists("w:netrw_rexlocal")
            Rexplore
        elseif exists("w:netrw_rexfile")
            execute 'edit ' . w:netrw_rexfile
        endif
    else
        Explore
    endif
endfunction

" Netrw keymaps
nnoremap <silent> <leader>E :Lexplore!<CR>
nnoremap <silent> <leader>e :call ToggleExplorer()<CR>

" ==========================
" Visual mode remaps
" ==========================
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" ==========================
" Window resizing
" ==========================
nnoremap <silent> <C-l> :vertical resize +4<CR>
nnoremap <silent> <C-k> :resize +4<CR>
nnoremap <silent> <C-j> :resize -4<CR>

" ==========================
" Quickfix navigation
" ==========================
nnoremap <leader>fj :cnext<CR>
nnoremap <leader>fk :cprev<CR>

" ==========================
" Highlight search clear
" ==========================
nnoremap <silent> <leader>h :nohlsearch<CR>
