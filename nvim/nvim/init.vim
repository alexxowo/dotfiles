" Editor configuration
" ----------------------------------
syntax on
filetype plugin indent on
set ttyfast
set cmdheight=2
set showmode!
set showcmd
set matchpairs+=<:>

" Editor behaviour
set number
set rnu
set wrap
set encoding=UTF-8

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

set cursorline
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
colorscheme horizon

" let g:material_style='oceanic'
hi Normal guibg=NONE ctermbg=NONE guifg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr cterm=NONE ctermfg=240 guifg=#2b506e guibg=NONE
hi Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=#2D2D2D
" ---------------------------------

" Plugins configuration
" ---------------------------------
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

" Highlights
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif


lua require('_lualine')
lua require('_telescope')
lua require('bufferline').setup{}

lua << EOF
require("bufferline").setup{
    indicator_icon = '',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
}
EOF
