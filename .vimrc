filetype plugin indent on

" ============================================
" show existing tab with 4 spaces width
" ============================================
set tabstop=2
set mouse=a
set cursorline
set showcmd
set hlsearch
set showmatch
set incsearch

" ============================================
" set vim-airline theme and plugin configuration
" ============================================
let g:airline_theme='dark'

" ============================================
" vim-airline config
" ============================================
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" ============================================
"when indenting with '>', use 4 spaces width
" ============================================
set shiftwidth=2

" ============================================
"On pressing tab, insert 4 spaces
" ============================================
set expandtab
set number
"set relativenumber
set hlsearch
set term=screen-256color
set background=dark

syntax enable
colorscheme gruvbox

call plug#begin('~/.vim/plugged')
" ============================================
" ALE is a linting
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
" Multiple Plug commands can be written in a single line using | separators
" ============================================
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" ============================================
" On-demand loading
" ============================================
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

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
" VIM airline and its theme
" ============================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ============================================
" VIM Javscript Prettier formatter
" ============================================
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" ============================================
" VIM Javscript Syntax highlighting
" ============================================
Plug 'pangloss/vim-javascript' 
Plug 'mxw/vim-jsx'

" ============================================
" VIM dracula theme
" ============================================
Plug 'dracula/vim', { 'as': 'dracula' }

" ============================================
" Syntax highting for styled-components
" ============================================
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" ============================================
" Easy Motion is a tools to navigate around the file
" ============================================
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-vinegar'

call plug#end()

" ============================================
" Javascript Prettier Configurations
" ============================================

" ============================================
" max line length that prettier will wrap on
" Prettier default: 80
" ============================================
let g:prettier#config#print_width = 80

" ============================================
" number of spaces per indentation level
" Prettier default: 2
" ============================================
let g:prettier#config#tab_width = 2

" ============================================
" use tabs over spaces
" Prettier default: false
" ============================================
let g:prettier#config#use_tabs = 'false'

" ============================================
" print semicolons
" Prettier default: true
" ============================================
let g:prettier#config#semi = 'true'

" ============================================
" single quotes over double quotes
" Prettier default: false
" ============================================
let g:prettier#config#single_quote = 'false'

" ============================================
" print spaces between brackets
" Prettier default: true
" ============================================
let g:prettier#config#bracket_spacing = 'false'

" ============================================
" put > on the last line instead of new line
" Prettier default: false
" ============================================
let g:prettier#config#jsx_bracket_same_line = 'false'

" ============================================
" avoid|always
" Prettier default: avoid
" ============================================
let g:prettier#config#arrow_parens = 'always'

" ============================================
" none|es5|all
" Prettier default: none
" ============================================
let g:prettier#config#trailing_comma = 'all'

" ============================================
" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
" ============================================
let g:prettier#config#parser = 'flow'

" ============================================
" cli-override|file-override|prefer-file
" ============================================
let g:prettier#config#config_precedence = 'prefer-file'

" ============================================
" always|never|preserve
" ============================================
let g:prettier#config#prose_wrap = 'preserve'
