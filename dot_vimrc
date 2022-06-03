" .vimrc.plug

call plug#begin('~/.vim/plugged')
" Git
Plug 'tpope/vim-fugitive'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Code commenter
Plug 'preservim/nerdcommenter'

" syntax highlight
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" NERDTree
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

" Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Theme
Plug 'morhetz/gruvbox'

" Tabs
Plug 'ap/vim-buftabline'

" Utils
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'


call plug#end()

syntax on
set noerrorbells
set nocompatible
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set background=dark
set laststatus=2
set re=0

filetype plugin on
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

let g:coc_global_extensions = [
            \ 'coc-eslint',
            \ 'coc-tsserver',
            \ ]

let g:vimwiki_list = [{'path': '~/Documents/notes',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" NERDTree Settings
let mapleader = " "
nmap <leader>e :NERDTreeToggle<cr>
vmap ++ : <plug>NERDCommenterToggle
nmap ++ : <plug>NERDCommenterToggle

" Undotree
nnoremap <silent> <leader>ut :UndotreeToggle<CR>

" autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" remaps for coc goto
nmap <leader>rr <Plug>(coc-rename)
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> [p <Plug>(coc-diagnostic-prev)
nmap <silent> ]n <Plug>(coc-diagnostic-next)
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Bufftabline
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>

" Files
map <leader>gf :GFiles<cr>
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>rg :Rg<SPACE>
map <leader>t :Tags<cr>
map <leader>m :Marks<cr>
