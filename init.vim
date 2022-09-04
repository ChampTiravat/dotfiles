" ======================================================================================
" Load plugins
" ======================================================================================
call plug#begin('~/.vim/plugged')

  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-vinegar'

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
  " VIM airline
  " ============================================
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " ============================================
  " VIM themes
  " ============================================
  Plug 'haishanh/night-owl.vim'
  Plug 'ntk148v/vim-horizon'
  Plug 'bluz71/vim-nightfly-guicolors'
  Plug 'arzg/vim-colors-xcode'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'arcticicestudio/nord-vim'

  " ============================================
  " VIM Javscript Prettier formatter
  " ============================================
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }

  " ============================================
  " VIM Javscript Syntax highlighting
  " ============================================
  Plug 'pangloss/vim-javascript' 
  Plug 'mxw/vim-jsx'
  Plug 'tomlion/vim-solidity'
  Plug 'ap/vim-css-color'

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
  " Highlight TODO
  " ============================================
  Plug 'sakshamgupta05/vim-todo-highlight'

  "--- LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/lsp-status.nvim'
  Plug 'mfussenegger/nvim-jdtls'

  "--- Completion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  " ============================================
  " File icons for many other plugins
  " (always load this plugin as the last one)
  " ============================================
  Plug 'ryanoasis/vim-devicons'
  " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


call plug#end()



" ======================================================================================
" Basic (Vim Native) Configurations
" ======================================================================================
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
set expandtab " Convert tab into spaces.
set tabstop=4
set softtabstop=4 " Set number of spaces when add/remove new tab(s).
set shiftwidth=4
set number
set laststatus=2
set hlsearch
set background=light
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

set encoding=UTF-8
let g:NERDTreeFileExtensionHighlightFullName = 0
let g:NERDTreeExactMatchHighlightFullName = 0
let g:NERDTreePatternMatchHighlightFullName = 0

let g:NERDTreeHighlightFolders = 0 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 0 " highlights the folder name


"--- Vim Markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_follow_anchor = 1


" ======================================================================================
" Airline configurations
" ======================================================================================
let g:airline#extensions#tabline#enabled = 0
"let g:airline_theme = 'base16_gruvbox_dark_hard'
"let g:airline_theme = 'papercolor'
"let g:airline_theme = 'night_owl'
"let g:airline_theme = 'horizon'
let g:airline_theme = 'nightfly'
"let g:airline_theme = 'xcodelight'
let g:airline_powerline_fonts = 0


" ======================================================================================
" Blamer configurations
" ======================================================================================
let g:blamer_enabled = 0
let g:blamer_delay = 200
let g:blamer_relative_time = 1

" ======================================================================================
" Set colorscheme
" ======================================================================================
hi Normal guibg=NONE ctermbg=NONE

if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"colorscheme vscode
"colorscheme gruvbox
"colorscheme PaperColor
"colorscheme nord
"colorscheme solarized
"colorscheme night-owl
"colorscheme horizon
colorscheme nightfly
"colorscheme xcodelight


set t_Co=256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

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
let g:prettier#config#tab_width = 4

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
let g:prettier#config#single_quote = 'false'

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

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-g> :Telescope live_grep<CR>
nnoremap <C-p> :Prettier<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-s> :w<CR>
"nnoremap <C-f> :FZF<CR>
"nnoremap <C-f> :Telescope buffers<CR>

" ======================================================================================
" Open NERDTree at startup
" ======================================================================================
" autocmd VimEnter * NERDTree 

