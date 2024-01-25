" --------------------------------------------------------------------------- "
" Index: {{{
" ---------------------------------------------------------------------------- "
" 	1. General settings
"	2. Plugins
"	3. Plugins config
"	4. Mappings
"	5. Vimscript
"	}}}

" ---------------------------------------------------------------------------- "
" 1. General settings {{{
" ---------------------------------------------------------------------------- "

" Disable vi compatibility
set nocompatible

" Lines of memory to remember
set history=1000

" Open help in a vertical window
cnoreabbrev help vert help

" Load and indent file for the detected file type
filetype indent on

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

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use spaces when tabbing
set expandtab

" Set the line width to 80 characters
set textwidth=80

" Do not wrap lines, Allow long lines to extend as far as the line goes
set wrap

" While searching through a file incrementally highlight matching characters as
" you type
set hlsearch
set incsearch

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Enable auto completion menu after pressing tab
set wildmenu

" Make wildmenu behave like similar to bash completion
set wildmode=list:longest

" There are certain files that we would never want to edit with vim
" Wildmenu will ignore files with these extensions
set wildignore="*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xslx

" Terminal behavior - :term
set termwinsize=12x0  " Set terminal size
set splitbelow        " Always split below
set mouse=a           " Enable mouse drag on window splits

" }}}

" ---------------------------------------------------------------------------- "
" 2. Plugins {{{
" ---------------------------------------------------------------------------- "

" Enable type file detection. Vim will be able to try to detect the type file
" in use. Required for Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" List of plugins installed
call vundle#begin()

	" PLUGIN MANAGER
	Plugin 'VundleVim/Vundle.vim'

	" GENERAL
    Plugin 'sheerun/vim-polyglot'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'preservim/nerdtree'
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plugin 'ryanoasis/vim-devicons'
	Plugin 'majutsushi/tagbar'
    Plugin 'powerline/powerline'
	Plugin 'valloric/youcompleteme'
	"Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-fugitive'

	" THEMES
	Plugin 'flazz/vim-colorschemes'

	"*****************************************"
	"*************** LANGUAGES ***************"
	"*****************************************"

	" MARKDOWN
	Plugin 'godlygeek/tabular' " TODO
"	Plugin 'plasticboy/vim-markdown' " TODO
"	Plugin 'jamshedvesuna/vim-markdown-preview' " TODO

call vundle#end()

filetype plugin indent on
autocmd Filetype c,cpp :set cindent
" }}}

" ---------------------------------------------------------------------------- "
" 3. Plugins config {{{
" ---------------------------------------------------------------------------- "

" Autopairs
let g:AutoPairsFlyMode            = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairsShortcutToggle     = '<C-P>'
let g:AutoPairsShortcutFastWrap   = '<M-e>'

" NERDTree
set encoding=utf8
set guifont="Monospace Regular 12"

let g:webdevicons_conceal_nerdtree_brackets = 1
let NERDTreeShowBookmarks                   = 1
let NERDTreeShowHidden                      = 0
let NERDTreeShowLineNumbers                 = 0
let NERDTreeWinPos                          = "left"
let NERDTreeWinSize                         = 30
let NERDTreeMinimalUI                       = 0
let NERDTreeMinimalMenu                     = 0

" NERDTree-syntax-highlight
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile  = 1
let g:NERDTreeDisableFileExtensionHighlight                     = 1
let g:NERDTreeDisableExactMatchHighlight                        = 1
let g:NERDTreeDisablePatternMatchHighlight                      = 1
let g:NERDTreeHighlightFolders                                  = 1
let g:NERDTreeHighlightFoldersFullName                          = 1

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

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['c'] = s:blue

" tagbar
let g:tagbar_position             = 'botright vertical'
let g:tagbar_autoclose            = 0
let g:tagbar_autofocus            = 1
let g:tagbar_sort                 = 0
let g:tagbar_compact              = 1
let g:tagbar_show_data_type       = 1
let g:tagbar_show_tag_linenumbers = 0
let g:tagbar_expand               = 1
let g:tagbar_auto_show_tag        = 1

" powerline
set laststatus=2
set showtabline=2

" vim-colorschemes
colorscheme gruvbox
"colorscheme archery
"colorscheme iceberg 
"colorscheme nord
"colorscheme scheakur
"colorscheme molokai
"colorscheme jellybeans
syntax enable
set background=dark

" Tabular
":let g:tabular_loaded = 1 
" }}}

" ---------------------------------------------------------------------------- "
" Mappings {{{
" --------------------------------------------------------------------------- "

let mapleader = ' '

nnoremap <F12>         : source ~/.vimrc<CR> : noh<CR>
nnoremap <F3>          : noh<CR>
nmap <F2>              : NERDTreeToggle<CR>
nnoremap <silent> <F8> : TagbarToggle<CR>
" }}}

" --------------------------------------------------------------------------- "
" 5. Vimscript {{{
" ---------------------------------------------------------------------------- "

" This will enable code folding
" Use the marker method of folding
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_c
	autocmd!
	autocmd FileType c setlocal foldmethod=syntax
" }}}
