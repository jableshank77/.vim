set nocompatible

inoremap jk <ESC>
let mapleader = " "

" -- PLUGINS --

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as':'dracula' }
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ntk148v/vim-horizon'
Plug 'othree/yajs.vim'
Plug 'w0rp/ale'
Plug 'https://github.com/preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" -------------------- EMMET CONFIG -------------------- 
let g:user_emmet_leader_key=','	

" ------------------------ PRETTIER CONFIG ---------------------------------
" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'false'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'avoid'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'

" COLORS
syntax enable
set runtimepath^=~/.vim/plugged/dracula/
colorscheme dracula


" SPACES & TABS
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" UI CONFIG
set rnu
set showcmd
set cursorline
filetype plugin indent on
set showmatch
set ruler
set autoindent
set smartindent
set spell spelllang=en_us
set encoding=utf-8
set clipboard=unnamedplus

" SEARCHING
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" FOLDING
set foldenable                                    " enable folding
set foldlevelstart=10                             " open most folds by default
set foldnestmax=10                                " 10 nested fold max

nnoremap <space> za                               " <space> open/close folds
set foldmethod=manual                            " fold set to manual

" -------------------------- FINDING FILES ------------------------------

" Search down into subfolders
" Provides tab-completion for allfile-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER
" - :b lets you auto complete any buffer

" --------------------------- TAG JUMPING --------------------------------

" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN
" - Use ^] to jump to tag under cursor
" - use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
"
" THINGS TO CONSIDER
" - This doesn't help if you want a visual list of tags
