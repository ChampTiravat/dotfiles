" -------------------------------------------
" Install Runtime Dependencies
" -------------------------------------------
" $ sudo apt install -y xclip
" $ sudo apt install -y ripgrep
" $ sudo apt install -y python3-pynvim


" -------------------------------------------
" Extensions Activation (run in vim console)
" -------------------------------------------
" :CocInstall coc-tsserver
" :CocInstall coc-go


" -------------------------------------------
" Extensions
" -------------------------------------------
call plug#begin('~/.vim/plugged')
    Plug 'mhinz/vim-startify'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-vinegar'
    Plug 'scrooloose/nerdtree'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'fatih/vim-go', { 'tag': '*' }
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'haishanh/night-owl.vim'
    Plug 'w0rp/ale'                      " ALE is a linting for many languages
    Plug 'othree/yajs.vim'               " JavaScript syntax highlighter
    Plug 'mxw/vim-jsx'                   " JSX syntax highlighter
    Plug 'ap/vim-css-color'              " CSS syntax highlighter
    Plug 'pangloss/vim-javascript'       " Javascript syntax highlighter
    Plug 'APZelos/blamer.nvim'
    Plug 'alvan/vim-closetag'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-neotest/nvim-nio'         " providing asynchronous features for nvim
    Plug 'mfussenegger/nvim-dap'         " DAP for Neovim
    Plug 'rcarriga/nvim-dap-ui'          " DAP UI
    Plug 'xiyaowong/transparent.nvim'
call plug#end()


" -------------------------------------------
" Basic Configurations
" -------------------------------------------
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
set encoding=UTF-8
set colorcolumn=100
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


" -------------------------------------------
" NERDTree
" -------------------------------------------
"let g:NERDTreeMinimalMenu=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName    = 1
let g:NERDTreePatternMatchHighlightFullName  = 1
let g:NERDTreeHighlightFolders               = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName       = 1 " highlights the folder name
" autocmd VimEnter * NERDTree                    " Open NERDTree at startup


" -------------------------------------------
" Vim Markdown settings
" -------------------------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_follow_anchor    = 1


" -------------------------------------------
" Blamer configurations
" -------------------------------------------
let g:blamer_enabled        = 1
let g:blamer_delay          = 200
let g:blamer_relative_time  = 1


" -------------------------------------------
" Set editor colorscheme
" -------------------------------------------
colorscheme night-owl


" -------------------------------------------
" Airline configurations & themes
" -------------------------------------------
let g:airline_theme                      = 'night_owl'
let g:airline_powerline_fonts            = 1
let g:airline#extensions#tabline#enabled = 1


" -------------------------------------------
" Use terminal color configurations
" -------------------------------------------
set t_Co=256
if (has("termguicolors"))
 set termguicolors
endif


" -------------------------------------------
" Keymap
" -------------------------------------------
nmap <S-k> <Plug>(coc-hover)
nmap oo <Plug>(coc-definition)
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-g> :Telescope live_grep<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-s> :w<CR>
"nnoremap <C-f> :FZF<CR>
"nnoremap <C-f> :Telescope buffers<CR>


" -------------------------------------------
" Prettier configurations
" -------------------------------------------
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


" -------------------------------------------
" Disable ALE for python (for simplicity)
" -------------------------------------------
augroup ale_disable_for_python
  autocmd!
  autocmd FileType python :ALEDisable
augroup END

augroup ale_disable_for_php
  autocmd!
  autocmd FileType php :ALEDisable
augroup END

let g:ale_go_gopls_options = '--remote=auto'
let g:ale_linters = {
\   'go': ['gopls'],
\}


" -------------------------------------------
" Setup debugger using vim-dap
" -------------------------------------------
" Set leader key to 'spacebar'
let mapleader=" "


" -------------------------------------------
" Debugging Key Mappings (similar to VSCode)
" -------------------------------------------
nnoremap <leader>db :lua require'dap'.continue()<CR>   " Start/Continue
nnoremap <leader>ds :lua require'dap'.close()<CR>      " Stop
nnoremap <leader>dr :lua require'dap'.repl.open()<CR>  " Open REPL
nnoremap <leader>di :lua require'dap'.step_into()<CR>  " Step Into
nnoremap <leader>do :lua require'dap'.step_over()<CR>  " Step Over
nnoremap <leader>du :lua require'dap'.step_out()<CR>   " Step Out
nnoremap <leader>dl :lua require'dap'.run_last()<CR>   " Run Last Configuration
nnoremap <leader>dbp :lua require'dap'.toggle_breakpoint()<CR> " Toggle Breakpoint
nnoremap <leader>dbc :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR> " Conditional Breakpoint


lua << EOF
local dap = require('dap')

-- DAP adapter for Go using delve
dap.adapters.go = {
  type = 'server';
  port = 38697; -- This can be any available port
  executable = {
    command = 'dlv';
    args = { 'dap', '--listen=:38697', '--headless', '--accept-multiclient' };
  }
}

dap.configurations.go = {
  {
    type = 'go',
    name = 'Debug',
    request = 'launch',
    mode = 'debug',
    program = "main.go",
    cwd = "${workspaceFolder}",
  },
}


-- Optional: Set up DAP UI
require("dapui").setup()

-- Automatically open DAP UI when debugging
dap.listeners.after.event_initialized["dapui_config"] = function()
  require("dapui").open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  require("dapui").close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  require("dapui").close()
end
EOF


lua << EOF
require("transparent").setup({
  enable = true,       -- Enable transparency
  extra_groups = {},   -- Additional groups to make transparent
  exclude_groups = {}, -- Groups to exclude from transparency
})
EOF
