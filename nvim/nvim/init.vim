" Editor configuration
" ----------------------------------
syntax on
filetype plugin indent on
set ttyfast
set cmdheight=2
set showmode
set showcmd
set matchpairs+=<:>

" Editor behaviour
set number
set rnu
set wrap

" Editor config
set nobackup
set noswapfile
set nolist
set nocompatible

" ----------------------------------
set tabstop=2
set smarttab
set shiftwidth=2
set expandtab
" ----------------------------------


" Imports
" ---------------------------------
" Plugins
runtime ./plug.vim

" Keymapping
runtime ./keymap.vim
" ---------------------------------
" Editor colors
set t_Co=256
set termguicolors
colorscheme vim-material
let g:material_style='oceanic'
hi Normal guibg=NONE ctermbg=NONE guifg=NONE
" ---------------------------------

" Plugins configuration
" ---------------------------------

" Vim Airline 
let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0BE"

" indent line
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Nerd Tree 
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=1
let NERDTreeDirArrows=1

let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

autocmd VimLeave * call system('printf "\e[5 q" > $TTY')

" Conquer of Completion (CoC)
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-phpls', 'coc-pyright']



lua require('lspconfig').tsserver.setup{}

lua require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }


