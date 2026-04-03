" ------------------------------------------------
" Install Runtime Dependencies
" ------------------------------------------------
" $ sudo apt install -y xclip
" $ sudo apt install -y wl-clipboard
" $ sudo apt install -y ripgrep
" $ sudo apt install -y python3-pynvim
" $      npm install -g neovim


" ------------------------------------------------
" Extensions Activation (run in vim console)
" ------------------------------------------------
" :CocInstall coc-tsserver
" :CocInstall coc-go
" :CocInstall coc-flutter


" ------------------------------------------------
" Extensions
" ------------------------------------------------
call plug#begin('~/.vim/plugged')
    Plug 'tribela/vim-transparent'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'folke/todo-comments.nvim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'nvim-neotest/nvim-nio'
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'fatih/vim-go'
    Plug 'charlespascoe/vim-go-syntax'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'nvim-tree/nvim-web-devicons'   " If you want to have icons in your statusline choose one of these
    Plug 'w0rp/ale'                      " ALE is a linting for many languages
    Plug 'othree/yajs.vim'               " JavaScript syntax highlighter
    Plug 'mxw/vim-jsx'                   " JSX syntax highlighter
    Plug 'ap/vim-css-color'              " CSS syntax highlighter
    Plug 'APZelos/blamer.nvim'
    Plug 'nvim-lua/plenary.nvim'         " required by nvim-telescope/telescope.nvim
    Plug 'nvim-telescope/telescope.nvim' " search for file names and file contents
    Plug 'MunifTanjim/nui.nvim'
    Plug 'nvim-neo-tree/neo-tree.nvim'
call plug#end()


" ------------------------------------------------
" Basic Configurations
" ------------------------------------------------
set clipboard=unnamedplus
set mouse=a
set cursorline
set showcmd
set wrap
set hlsearch
set showmatch
set incsearch
set syntax=go
set autoindent
set encoding=utf-8
set fileencoding=utf-8
" set colorcolumn=100
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
set termguicolors
syntax enable
filetype plugin indent on


" ------------------------------------------------
" Vim Markdown settings
" ------------------------------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_follow_anchor    = 1


" ------------------------------------------------
" Blamer configurations
" ------------------------------------------------
let g:blamer_enabled        = 1
let g:blamer_delay          = 200
let g:blamer_relative_time  = 1


" ------------------------------------------------
" Keymap
" ------------------------------------------------
nmap <S-k> <Plug>(coc-hover)
nmap oo <Plug>(coc-definition)
nnoremap <C-n> :Neotree<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-g> :Telescope live_grep<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-s> :w<CR>


" ------------------------------------------------
" Prettier configurations
" ------------------------------------------------
let g:prettier#config#arrow_parens                 = 'always'
let g:prettier#config#bracket_spacing              = 'true'
let g:prettier#config#bracket_same_line            = 'false'
let g:prettier#config#embedded_language_formatting = 'auto'
let g:prettier#config#end_of_line                  = 'lf'
let g:prettier#config#html_whitespace_sensitivity  = 'css'
let g:prettier#config#jsx_single_quote             = 'false'
let g:prettier#config#print_width                  = 100
let g:prettier#config#prose_wrap                   = 'preserve'
let g:prettier#config#quote_props                  = 'as-needed'
let g:prettier#config#semi                         = 'true'
let g:prettier#config#single_attribute_per_line    = 'false'
let g:prettier#config#single_quote                 = 'false'
let g:prettier#config#tab_width                    = 4
let g:prettier#config#trailing_comma               = 'es5'
let g:prettier#config#use_tabs                     = 'false'
let g:prettier#config#vue_indent_script_and_style  = 'false'


" ------------------------------------------------
" Disable ALE for python (for simplicity)
" ------------------------------------------------
augroup ale_disable_for_python
  autocmd!
  autocmd FileType python :ALEDisable
augroup END


" augroup ale_disable_for_php
"   autocmd!
"   autocmd FileType php :ALEDisable
" augroup END


let g:ale_go_gopls_options = '--remote=auto'
let g:ale_linters = {
\   'go': ['gopls'],
\}


" ------------------------------------------------
" Set editor colorscheme
" ------------------------------------------------
" colorscheme catppuccin-latte
colorscheme catppuccin-mocha


lua << EOF
  require("catppuccin").setup({
     color_overrides = {
       all = {
         base   = "#111111",
         mantle = "#111111",
         crust  = "#111111",
       },
     },
  })
  vim.cmd.colorscheme("catppuccin-mocha")
  -- vim.cmd.colorscheme("catppuccin-latte")
EOF


lua << EOF
require("neo-tree").setup({
  -- some configs / distros disable this explicitly
  enable_diagnostics = true, -- :contentReference[oaicite:2]{index=2}

  default_component_configs = {
    diagnostics = {
      symbols = {
        hint = "●",
        info = "●",
        warn = "●",
        error = "●",
      },
      highlights = {
        hint = "DiagnosticHint",
        info = "DiagnosticInfo",
        warn = "DiagnosticWarn",
        error = "DiagnosticError",
      },
    },
  },
})
EOF


lua << EOF
require("todo-comments").setup({})
EOF

lua << END
require('lualine').setup()
END


" Prevent weird behavior when saving .go files and the cursor will move down
" to the bottom of the file. This is caused by the mechanism of gofmt format-on-save.
" We solve this by saving the cursor position before gofmt autosave then after
" gofmt has run, we move the cursor back to the original position.
augroup GoFmtFixView
  autocmd!
  autocmd BufWritePre *.go let b:saveview = winsaveview()
  autocmd BufWritePre *.go silent! call go#auto#fmt_autosave()
  autocmd BufWritePost *.go if exists('b:saveview') | call winrestview(b:saveview) | unlet b:saveview | endif
augroup END


