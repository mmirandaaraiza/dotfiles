"--------------------------PACKAGE MANAGER---------------------------------"
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"--------------------------PLUGINS-----------------------------------------"
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-vinegar'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'
call plug#end()

"--------------------------KEYMAPS-----------------------------------------"
" maps , to placeholder <leader>
let mapleader=','

" maps %% to the current directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<CR>

" ,ew -- open a file in current directory
map <leader>ew :e %%<CR>

" ,es -- horizontal split open a file in current directory
map <leader>es :sp %%<CR>

" ,ev -- vertical split open a file in current directory
map <leader>ev :vsp %%<CR>

" ,v -- tab open vimrc file
nmap <leader>v :tabe $MYVIMRC<CR>

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

" ,f -- search file contents with ripgrep
nmap <leader>f :Rg 

" ,p -- search file names with fzf
nmap <leader>p :Files<CR>

" keybinds that can be used after starting a search with fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'}

"--------------------------CONFIGURATION-----------------------------------"
" sets colors for vimdiff, otherwise they lack contrast
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" sets the theme for vim airline status bar
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

"sets splits below and to the right
set splitbelow
set splitright

" indentation uses spaces instead of tabs
set ts=2 sts=2 sw=2 expandtab
