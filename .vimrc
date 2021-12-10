set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'gregsexton/MatchTag'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'aklt/plantuml-syntax'

let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsListSnippets = '<C-Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

call vundle#end()

"escape and save remap
imap lj <Esc>
nnoremap sf :update<cr>
nnoremap ou :q<cr>
nnoremap :T :ter<cr>
nnoremap :V :vert term 
nnoremap :E :edit!<cr>

"maps split switching
nnoremap <C->> <C-W>>
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

"switch line start and end
nnoremap B ^
nnoremap E $

filetype plugin indent on
syntax on 

autocmd FileType md set autoindent
autocmd FileType md set shiftwidth=2 tabstop=2

autocmd FileType tex set shiftwidth=4 tabstop=4
autocmd FileType tex set autoindent

autocmd FileType py || go set shiftwidth=4 tabstop=4
autocmd FileType py || go set autoindent
autocmd FileType py || go set textwidth=79 " PEP-8 Friendly

autocmd FileType sql set shiftwidth=2 tabstop=2

autocmd FileType txt set spell
autocmd FileType txt set spelllang=en_us
autocmd FileType txt set shiftwidth=2 tabstop=2
autocmd FileType txt set autoindent

autocmd FileType js set shiftwidth=2 tabstop=2
autocmd FileType js set autoindent

autocmd FileType jl set autoindent
autocmd FileType jl set shiftwidth=4 tabstop=4

autocmd FileType ul VimEnter :source "/home/frank/.vim/bundle/plantuml-syntax/syntax/plantuml.vim"

set showmatch "matches parens etc

set encoding=utf-8

set splitbelow
set splitright
set nu rnu

set clipboard=unnamedplus

autocmd BufWinLeave *.* mkview "auto saves views for folds
autocmd BufWinEnter *.* silent loadview  "auto loads views for folds

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

