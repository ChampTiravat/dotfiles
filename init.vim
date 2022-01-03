filetype plugin indent on


" ======================================================================================
" Basic (Vim Native) Configurations
" ======================================================================================
set mouse=a
set cursorline
set showcmd
set hlsearch
set showmatch
set incsearch
set syntax=go
set autoindent
set encoding=UTF-8
set colorcolumn=90
set expandtab " Convert tab into spaces.
set tabstop=2
set softtabstop=2 " Set number of spaces when add/remove new tab(s).
set shiftwidth=2
set number
set hlsearch
set background=dark
"set relativenumber


" ======================================================================================
" Airline configurations
" ======================================================================================
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'
"let g:airline_powerline_fonts = 1


" ======================================================================================
" Blamer configurations
" ======================================================================================
let g:blamer_enabled = 1
let g:blamer_delay = 200
let g:blamer_relative_time = 1


" ======================================================================================
" Set colorscheme
" ======================================================================================
colorscheme monokai


" ======================================================================================
" Load plugins
" ======================================================================================
call plug#begin('~/.vim/plugged')

  Plug 'dracula/vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-vinegar'

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
  " Equivalence to GitLens in VSCode
  " ============================================
  Plug 'APZelos/blamer.nvim'

  " ============================================
  " HTML/JSX auto closing tag
  " ============================================
  Plug 'alvan/vim-closetag'

  " ============================================
  " Highlight TODO
  " ============================================
  Plug 'sakshamgupta05/vim-todo-highlight'

  " ============================================
  " Add markdown support
  " ============================================
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'

  " ============================================
  " File icons for many other plugins
  " (always load this plugin as the last one)
  " ============================================
  Plug 'ryanoasis/vim-devicons'

call plug#end()


" ======================================================================================
" Javascript Prettier Configurations
" ======================================================================================

" ============================================
" max line length that prettier will wrap on
" Prettier default: 80
" ============================================
let g:prettier#config#print_width = 90

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
let g:prettier#config#semi = 'false'

" ============================================
" single quotes over double quotes
" Prettier default: false
" ============================================
let g:prettier#config#single_quote = 'true'

" ============================================
" print spaces between brackets
" Prettier default: true
" ============================================
let g:prettier#config#bracket_spacing = 'true'

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


" ======================================================================================
" Vim Close Tag Configurations
" ======================================================================================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive 
" (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

