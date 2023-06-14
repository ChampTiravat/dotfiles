call plug#begin('~/.vim/plugged')
    Plug 'github/copilot.vim'
    Plug 'xiyaowong/transparent.nvim'
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'othree/yajs.vim'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-vinegar'
    Plug 'mhinz/vim-startify'
    Plug 'honza/vim-snippets'
    Plug 'luochen1990/rainbow'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'easymotion/vim-easymotion'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " ============================================
    " ALE is a linting for many languages
    " ============================================
    Plug 'w0rp/ale'

    " ============================================
    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    " ============================================
    Plug 'junegunn/vim-easy-align'

    " ============================================
    " Any valid git URL is allowed
    " ============================================
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    " ============================================
    " Using a non-master branch
    " ============================================
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

    " ============================================
    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
    " ============================================
    Plug 'fatih/vim-go', { 'tag': '*' }

    " ============================================
    " Plugin options
    " ============================================
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

    " ============================================
    " Plugin outside ~/.vim/plugged with post-update hook
    " ============================================
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " ============================================
    " Unmanaged plugin (manually installed and updated)
    " ============================================
    Plug '~/my-prototype-plugin'

    " ============================================
    " VIM airline
    " ============================================
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " ============================================
    " VIM themes
    " ============================================
    Plug 'haishanh/night-owl.vim'
    Plug 'arzg/vim-colors-xcode'

    " ============================================
    " VIM Javscript Syntax highlighting
    " ============================================
    Plug 'mxw/vim-jsx'
    Plug 'ap/vim-css-color'
    Plug 'tomlion/vim-solidity'
    Plug 'pangloss/vim-javascript'

    " ============================================
    " Syntax highting for styled-components
    " ============================================
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    " ============================================
    " Equivalence to GitLens in VSCode
    " ============================================
    Plug 'APZelos/blamer.nvim'

    " ============================================
    " HTML/JSX auto closing tag
    " ============================================
    Plug 'alvan/vim-closetag'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " ============================================
    " Highlight
    " ============================================
    Plug 'sakshamgupta05/vim-todo-highlight'

    " ============================================
    " File icons for many other plugins
    " (always load this plugin as the last one)
    " ============================================
    " Plug 'ryanoasis/vim-devicons'
call plug#end()


" =====================================================================
" Basic (Vim Native) Configurations
" =====================================================================
set mouse=a
set cursorline
set showcmd
set wrap
set hlsearch
set showmatch
set incsearch
set syntax=go
set autoindent
set encoding=UTF-8
set colorcolumn=90
set expandtab       " Convert tab into spaces.
set tabstop=4
set softtabstop=4   " Set number of spaces when add/remove new tab(s).
set shiftwidth=4
set number
set laststatus=2
set hlsearch
set background=dark
set ignorecase
set exrc
set backspace=indent,eol,start
set nocompatible
set nohlsearch
set nowrap
set showcmd
set incsearch
set noswapfile
set smartcase
set autoread
set ruler
set hidden
set splitright
set expandtab
set noerrorbells
syntax enable
filetype plugin indent on


" =====================================================================
" Rainbow
" =====================================================================
let g:rainbow_active = 1


" =====================================================================
" NERDTree
" =====================================================================
"let g:NERDTreeMinimalMenu=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName    = 1
let g:NERDTreePatternMatchHighlightFullName  = 1
let g:NERDTreeHighlightFolders               = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName       = 1 " highlights the folder name
" autocmd VimEnter * NERDTree                    " Open NERDTree at startup


" ======================================================================================
" Vim Markdown settings
" ======================================================================================
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_follow_anchor    = 1


" ======================================================================================
" Blamer configurations
" ======================================================================================
let g:blamer_enabled        = 0
let g:blamer_delay          = 200
let g:blamer_relative_time  = 1


" ======================================================================================
" Set editor colorscheme
" ======================================================================================
"colorscheme xcodelight
colorscheme night-owl


" ======================================================================================
" Airline configurations & themes
" ======================================================================================
"let g:airline_theme                      = 'xcodelight'
let g:airline_theme                      = 'night_owl'
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1


" =====================================================================
" Set terminal color configurations
" =====================================================================
set t_Co=256

" =====================================================================
" only turn this on when in dark mode
" =====================================================================
if (has("termguicolors"))
 set termguicolors
endif


" =====================================================================
" Enable transparency
" =====================================================================
g:transparent_enabled


let $nvim_tui_enable_true_color=1

" ======================================================================================
" Keymap
" ======================================================================================
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-g> :Telescope live_grep<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-s> :w<CR>
"nnoremap <C-f> :FZF<CR>
"nnoremap <C-f> :Telescope buffers<CR>

