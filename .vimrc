" Index: {{{
" 	1. General settings
"	2. Plugins
"	3. Post-plugins setting
"	4. Abbreviations
"	5. Mappings
"	6. Vimscript
"	}}}

" ---------------------------------------------------------------------------- "
" 1. General settings {{{
" ---------------------------------------------------------------------------- "

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type file
" in use. Required for Vundle to be off
filetype off

" Turn syntax highlighting on
syntax on

" Add numbers to each line on the left-hand side
set number

" Add numbers to each line on the left-hand side, relative to the current line
set relativenumber

" Highlight cursor line underneath the cursor horizontally
set cursorline

" Highlight cursor line underneath the cursor vertically
set cursorcolumn

" Highlight line width
set colorcolumn=80

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use spaces when tabbing
set expandtab

" Set the line width to 80 characters
set textwidth=80

" Wrap lines
set wrap

" Enable incremental search
set incsearch

" While searching through a file incrementally highlight matching characters as
" you type
set hlsearch

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Lines of memory to remember
set history=50

" Enable auto completion menu after pressing tab
set wildmenu

" Make wildmenu behave like similar to bash completion
set wildmode=list:longest

" There are certain files that we would never want to edit with vim
" Wildmenu will ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xslx

" Set terminal size
set termwinsize=12x0

" Always split below
set splitbelow

" Enable mouse drag on window splits
set mouse=a

" Move between buffers without save
set hidden

" Autocomplete menu
set completeopt=menuone,noinsert,noselect

" Show file title in the tab
set title

" Number of lines below and above the cursor
set scrolloff=10

" }}}

" ---------------------------------------------------------------------------- "
" 2. Plugins {{{
" ---------------------------------------------------------------------------- "

" ---------------------------------------------------------------------------- "
" --------------------------------- VUNDLE ----------------------------------- "
" ---------------------------------------------------------------------------- "

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Download plugins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" ---------------------------------------------------------------------------- "
" --------------------------------- THEMES ----------------------------------- "
" ---------------------------------------------------------------------------- "

Plugin 'flazz/vim-colorschemes'

" ---------------------------------------------------------------------------- "
" ------------------------------ STATUS LINE --------------------------------- "
" ---------------------------------------------------------------------------- "

Plugin 'powerline/powerline'

set rtp+=~/.vim/plugged/powerline/powerline/bindings/vim

set laststatus=2
set showtabline=2
set noshowmode

" ---------------------------------------------------------------------------- "
" ------------------------------- POLYGLOT ----------------------------------- "
" ---------------------------------------------------------------------------- "

Plugin 'sheerun/vim-polyglot'

" ---------------------------------------------------------------------------- "
" ------------------------------- AUTOPAIRS ---------------------------------- "
" ---------------------------------------------------------------------------- "

Plugin 'jiangmiao/auto-pairs'

let g:AutoPairsFlyMode            = 1
let g:AutoPairsShortcutBackInsert = '<C-b>'
let g:AutoPairsShortcutToggle     = '<C-P>'
let g:AutoPairsShortcutFastWrap   = '<C-e>'

" ---------------------------------------------------------------------------- "
" ------------------------------- NERDTREE ----------------------------------- "
" ---------------------------------------------------------------------------- "

Plugin 'preservim/nerdtree'

" Bookmark file location. Need the expand function to expand '~'
let NERDTreeBookmarksFile   = expand('~/.vim/NERDTreeBookmarks')
let NERDTreeShowBookmarks   = 1
let NERDTreeShowHidden      = 0
let NERDTreeShowLineNumbers = 0
let NERDTreeWinPos          = 'left'
let NERDTreeWinSize         = 30
let NERDTreeMinimalUI       = 0
let NERDTreeMinimalMenu     = 0

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

let g:NERDTreeDisableFileExtensionHighlight	= 1
let g:NERDTreeDisableExactMatchHighlight	= 1
let g:NERDTreeDisablePatternMatchHighlight	= 1
let g:NERDTreeHighlightFolders				= 1
let g:NERDTreeHighlightFoldersFullName 		= 1

let s:brown       = "905532"
let s:aqua        = "3AFFDB"
let s:blue        = "689FB6"
let s:darkBlue    = "44788E"
let s:purple      = "834F79"
let s:lightPurple = "834F79"
let s:red         = "AE403F"
let s:beige       = "F5C06F"
let s:yellow      = "F09F17"
let s:orange      = "D4843E"
let s:darkOrange  = "F16529"
let s:pink        = "CB6F6F"
let s:salmon      = "EE6E73"
let s:green       = "8FAA54"
let s:lightGreen  = "31B53E"
let s:white       = "FFFFFF"
let s:rspec_red   = "FE405F"
let s:git_orange  = "F54D27"

let g:NERDTreeExtensionHighlightColor 					= {}
let g:NERDTreeExtensionHighlightColor['c'] 				= 's:blue'
let g:NERDTreeExactMatchHighlightColor 					= {}
let g:NERDTreeExactMatchHighlightColor['.gitignore'] 	= 's:git_orange'

Plugin 'ryanoasis/vim-devicons'

set encoding=utf8
set guifont="Monospace Regular 12"

let g:webdevicons_enable_nerdtree								= 1
let g:webdevicons_conceal_nerdtree_brackets						= 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile  = 1

" ---------------------------------------------------------------------------- "
" -------------------------------- TAGBAR ------------------------------------ "
" ---------------------------------------------------------------------------- "

Plugin 'majutsushi/tagbar'

let g:tagbar_position				= 'botright vertical'
let g:tagbar_width					= '50'
let g:tagbar_autoclose				= 0
let g:tagbar_autofocus				= 1
let g:tagbar_sort					= 0 "sort by position in the source file
let g:tagbar_compact				= 2
let g:tagbar_indent					= 4
let g:tagbar_show_data_type			= 1
let g:tagbar_show_tag_linenumbers	= 0
let g:tagbar_show_prefix			= 1
let g:tagbar_show_tag_count			= 1
let g:tagbar_expand               	= 0
let g:tagbar_auto_show_tag        	= 1
let g:tagbar_previewwin_pos			= 'splitbelow'
let g:tagbar_wrap					= 0 "wrap long lines in the tagbar window

" ---------------------------------------------------------------------------- "
" --------------------------------- GIT -------------------------------------- "
" ---------------------------------------------------------------------------- "
Plugin 'tpope/vim-fugitive'

" ---------------------------------------------------------------------------- "
" ------------------------------ COMMENTS ------------------------------------ "
" ---------------------------------------------------------------------------- "
Plugin 'preservim/nerdcommenter'

let g:NERDSpaceDelims	= 1

" ---------------------------------------------------------------------------- "
" ------------------------------- PYTHON ------------------------------------- "
" ---------------------------------------------------------------------------- "
"Plugin 'davidhalter/jedi-vim'

"let g:jedi#auto_vim_configuration 	= 1
"let g:jedi#popup_select_first		= 1
"let g:jedi#use_splits_not_buffers	= 'right'

"Plugin 'python-mode/python-mode'

" ---------------------------------------------------------------------------- "
" --------------------------------- ALE -------------------------------------- "
" ---------------------------------------------------------------------------- "

Plugin 'dense-analysis/ale'

set omnifunc=ale#completion#OmniFunc

let g:ale_lint_on_save			= 1
let g:ale_lint_on_enter			= 1
let g:ale_fix_on_save			= 1
let g:ale_completion_enabled	= 1
let g:ale_floating_preview		= 1
let g:ale_sign_error 			= '❌'
let g:ale_sign_warning 			= '⚠️'
let g:ale_sign_info				= 'ℹ️'

let g:ale_linters = {
\	'c': ['gcc', 'clangd'],
\	'haskell': []
\}

let g:ale_fixers = {
\	'c': ['clang-format'],
\	'haskell': []
\}

	" GENERAL
	" --------
	"Plugin 'tpope/vim-surround'

	"*****************************************"
	"*************** LANGUAGES ***************"
	"*****************************************"

	" MARKDOWN
	"Plugin 'godlygeek/tabular' " TODO
"	Plugin 'plasticboy/vim-markdown' " TODO
"	Plugin 'jamshedvesuna/vim-markdown-preview' " TODO

call vundle#end()

" }}}

" ------------------------------------------------------------------------------
" 3. Post-plugins settings {{{
" ------------------------------------------------------------------------------

filetype plugin indent on
set background=dark

"colorscheme Atelier_DuneDark
"colorscheme CandyPaper
colorscheme gruvbox
"colorscheme archery
"colorscheme iceberg
"colorscheme nord
"colorscheme scheakur
"colorscheme molokai
"colorscheme jellybeans
"colorscheme minimalist
"colorscheme codedark

highlight ColorColumn ctermbg=88

" }}}

" ---------------------------------------------------------------------------- "
" 4. Abbreviations {{{
" ---------------------------------------------------------------------------- "

" Open help in a vertical window
cnoreabbrev help vert help

" }}}

" ---------------------------------------------------------------------------- "
" 4. Plugins config {{{
" ---------------------------------------------------------------------------- "
" Tabular
":let g:tabular_loaded = 1
" }}}

" ---------------------------------------------------------------------------- "
" 5. Mappings {{{
" --------------------------------------------------------------------------- "

" Set the coma as the leader key
let mapleader = ','

" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRK+h, or CTRL+l
nnoremap <c-j>          <c-w>j
nnoremap <c-k>          <c-w>k
nnoremap <c-h>          <c-w>h
nnoremap <c-l>          <c-w>l

" Resize split windows using arrow keys by pressing
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT
nnoremap <c-up>         <c-w>+
nnoremap <c-down>       <c-w>-
nnoremap <c-left>       <c-w><
nnoremap <c-right>      <c-w>>

" NERDTree specific mappings
" Map the F2 key to toggle NERDTree open and close
nmap <F2>              :NERDTreeToggle<CR>

" Reload the vim configuration
nnoremap <F12>         :source ~/.vimrc<CR> :noh<CR>

nnoremap <F3>          :noh<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>

nmap <silent> gd 	:ALEGoToDefinition<CR>
nmap <silent> gt 	:ALEGoToTypeDefinition<CR>
nmap <silent> gi 	:ALEGoToImplementation<CR>
nmap <silent> gr 	:ALEFindReferences<CR>
nmap <silent> D 	:ALEHover<CR>
nmap <silent> E 	:ALEDetail<CR>

" }}}

" --------------------------------------------------------------------------- "
" 6. Vimscript {{{
" ---------------------------------------------------------------------------- "

" This will enable code folding
" Use the marker method of folding
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup indentation
	" If the current file type is HTML, set indentation to 2 spaces
	autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
	" If the current file type is c, cpp or h, set indentation to 4 spaces
	autocmd Filetype c,cpp,h setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab cindent
augroup END

" }}}
