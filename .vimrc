"--------------------------TIPS--------------------------------------------"

"view help file for text objects

"TODO make it work with modern javascript, it only works for normal functions

"jsRegexpString = regex string

"jsGlobalNodeObjects = require

"jsComment = comment


"--------------------------PLUGINS-----------------------------------------"

" Required vundle configuration
" Plugins are added between vundle begin and vundle end
" HiLinkTrace is plugin for view group syntax for word under cursor
" set nocompatible
" filetype off
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"" Plugin 'VundleVim/Vundle.vim'
"" Plugin 'tpope/vim-vinegar'
"" Plugin 'vim-airline/vim-airline'
"" Plugin 'vim-airline/vim-airline-themes'
"" Plugin 'sheerun/vim-polyglot'
"" Plugin 'scrooloose/nerdtree'
"" Plugin 'mattn/emmet-vim'
"" Plugin 'SirVer/ultisnips'
"" Plugin 'tpope/vim-surround'
"" Plugin 'w0rp/ale'
"" Plugin 'editorconfig/editorconfig-vim'
"" Plugin 'styled-components/vim-styled-components'
"" Plugin 'ryanoasis/vim-devicons'
" Plugin 'python-mode/python-mode'
" Plugin 'kien/ctrlp.vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'mileszs/ack.vim'
" Plugin 'skwp/greplace.vim'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-commentary'
" Plugin 'AndrewRadev/inline_edit.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'shawncplus/phpcomplete.vim'
" Plugin 'gerw/vim-HiLinkTrace'
" Plugin 'joonty/vdebug'
" call vundle#end()
" filetype plugin indent on


"--------------------------KEYMAPS-----------------------------------------"

" sets colors for vimdiff, otherwise they lack contrast
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" maps , to placeholder <leader>
let mapleader=','

" maps %% to the current directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<CR>

" alt + 1 -- open nerd tree
"" nmap <A-1> :NERDTreeToggle<CR>

" alt + 2 -- toggle tagbar
"" nmap <A-2> :TagbarToggle<CR>

" ,ew -- open a file in current directory
map <leader>ew :e %%

" ,es -- horizontal split open a file in current directory
map <leader>es :sp %%

" ,ev -- vertical split open a file in current directory
map <leader>ev :vsp %%

" ,et -- tab open a file in current directory
map <leader>et :tabe %%

" ,,r -- open routes directory
nmap <leader><leader>r :e routes/<CR>

" ,,m -- open models directory
nmap <leader><leader>m :e models/<CR>

" ,,v -- open views directory
nmap <leader><leader>v :e views/<CR>

" ,,c -- open controllers directory
nmap <leader><leader>c :e controllers/<CR>

" ,v -- tab open vimrc file
nmap <leader>v :tabe $MYVIMRC<CR>

" ,c -- open themefile
nmap <leader>c :tabe ~/.vim/colors/<CR>

" ,s -- open snippets folder
nmap <leader>s :tabe ~/.vim/UltiSnips/<CR>

" ,af to run ale autofixer
"" nmap <leader>af :ALEFix<CR>

" ,t -- search by tag
"" nmap <leader>t :tag<space>

" ,tg -- searching tags
" nmap <leader>tg :CtrlPBufTag<CR>

" ,r -- view most recent files
" nmap <leader>r :CtrlPMRUFiles<CR>

" ,f -- start searching files
" nmap <leader>f :Ack<space>

" ,b -- search word under cursor
" nmap <leader>b :Ack <cword><CR>

" shift + movement key -- move between splits
nmap <S-J> <C-W><C-J>
nmap <S-K> <C-W><C-K>
nmap <S-H> <C-W><C-H>
nmap <S-L> <C-W><C-L>

" ctrl + movement key -- move across displayed lines
" cannot map ctrl with non alphabetic characters
" use g0 and g$ to move to start / end of virtual line
nmap <C-J> gj
nmap <C-K> gk
vmap <C-J> gj
vmap <C-K> gk

" , + space -- remove highlighting after search
nmap <leader><space> :nohlsearch<CR>

" ,,f autoformat the whole document and returns to last position
nmap <leader><leader>f gg=G''

" ycm mappings for selecting completion entry
"" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" tab for completion, tab for next stop, shift-tab for prev stop -- ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ,n and ,p for going to next and previous error from eslint 
"" nmap <silent> <leader>p <Plug>(ale_previous_wrap)
"" nmap <silent> <leader>n <Plug>(ale_next_wrap)

" emmet trigger
"let g:user_emmet_leader_key='<C-z>'
"let g:user_emmet_expandabbr_key = '<tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" ctr-shift-q show the syntax group of word under cursor
" needs vim hi link trace plugin
" nmap <C-S-Q> :HLT!<CR>

" ctrl-shift-o -- show syntax highlighting groups for word under cursor
" maybe can be useful if changing the map so that it doesnt override ctrl + o
" for going back in jump list
"nmap <C-S-O> :call <SID>SynStack()<CR>
"function! <SID>SynStack()
"    if !exists("*synstack")
"        return
"    endif
"    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
"endfunc


"--------------------------CONFIGURATION-----------------------------------"

" sets encoding for vim devicons
set encoding=UTF-8

" enables syntax, syntax on overrides with default
syntax enable

" sets incremental and highlight search
set incsearch
set hlsearch

" search next wraps back to start of file
set wrapscan

"sets splits below and to the right
set splitbelow
set splitright

" sets line numbers
set number

" removes scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" removes the toolbar
set guioptions-=T

" prevents wrapped lines to split mid word
set linebreak

" next line will keep indentation
set autoindent

" indentation uses spaces instead of tabs
set ts=2 sts=2 sw=2 expandtab

" changes tabs and end of line characters to match the ones on textmate
set listchars=tab:▸\ ,eol:¬

" % -- matches html tags, etc 
packadd! matchit

" makes backspace work like other editors
set backspace=indent,eol,start

" stops creation of .netrwhist file
let g:netrw_dirhistmax = 0

" set the color scheme even for terminal vim
" colorscheme hagen

" make gui colors work for terminal vim, does work on ubuntu 16.04
" set termguicolors

" set the font for gvim
" set guifont=Fira\ Mono\ 12

" set the line height, only works for gvim
" set linespace=2

" sets backup files (filename~) only if no vms
" if has("vms")
"     set nobackup
" else
"     set backup
" endif

" shows gutentag status on the status line
" :set statusline+=%{gutentags#statusline()}

" sets the theme for vim airline status bar
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'


" sets silversearcher-ag instead of ack for search
" if executable('ag')
"   let g:ackprg = 'ag --vimgrep'
" endif

" greplace with ag
" set grepprg=ag
" let g:grep_cmd_opts = '--line-numbers --noheading'

" stops nerdtree from blocking default file browser
"" let g:NERDTreeHijackNetrw= 0

" allows nerdtree to show hidden files
"" let NERDTreeShowHidden=1

" add a .ctrlp file to the root of proyect and ctrlp as start when searching
" let g:ctrlp_root_markers = ['.ctrlp']

" sets a higher number of results for ctrlp
" let g:ctrlp_match_window = 'results:100'

" ignore some files for ctrlp
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" declare only which linters to run for javascript
" for other languages allother linters will be enabled
" its a good idea to declare which linters to use because packages may have
" their own linters, e.g. facebook-business-sdk comes with jshint and would
" start showing warnings
" for eslint in typescript, need a custom parser, babel-eslint currently
" doesnt support it
"" let g:ale_linters = {
""  \   'javascript': [
""  \       'eslint',
""  \   ],
""  \   'typescript': [
""  \       'tsserver',
""  \       'tslint',
""  \   ],
""  \}


" allow eslint to be used as autofixer for javascript
"" let g:ale_fixers = {
""  \   'javascript': [
""  \       'eslint',
""  \   ],
""  \}

" Only run linters named in ale_linters settings.
"let g:ale_linters_explicit = 1

" Change ale output for message so that it tells which linter is complaining
let g:ale_echo_msg_format = '%linter% says %s'

" Show error in airline
"" let g:airline#extensions#ale#enabled = 1

" allow emmet to use jsx in javascript files so that it expands correctly
" e.g. instead of class it will use className
""  let g:user_emmet_settings = {
""  \  'javascript.jsx' : {
""  \      'extends' : 'jsx',
""  \  },
""  \}

" adds jsx support highlighting only in jsx files
" let g:jsx_ext_required = 1

" adds a space on comments created by nerd commenter
" let g:NERDSpaceDelims = 1

" when using UltiSnipsEdit, if you dont have the filetype created inside .vim
" it gets created by default at home directory which needs to be scanned
let g:UltiSnipsSnippetsDir= '~/.vim/UltiSnips/'

" when using UltiSnipsEdit, open in a split
let g:UltiSnipsEditSplit = 'tabdo' 

" enable html snippets inside jsx 
"" autocmd FileType javascript.jsx UltiSnipsAddFiletypes html

" sources .vimrc after save (see changes automatically)
if has("autocmd")
    autocmd! bufwritepost .vimrc source $MYVIMRC
    autocmd! bufwritepost hagen.vim source ~/.vim/colors/hagen.vim
endif

