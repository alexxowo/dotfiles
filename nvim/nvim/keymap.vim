let mapleader = ','

" center view when search results with n/N
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap daw dawi

" Save, close, save and close mapping
nnoremap <leader>ss :w!<CR> 
nnoremap <leader>qq :q!<CR>
nnoremap <leader>sq :wq!<CR>

" Tabs Config - Close tab
noremap <leader>tc :tabclose<CR>

" move between buffers
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR>

" Close Actual buff and save if not saved
command! CloseBuff :call s:closeBuffer()
noremap <leader>cf :CloseBuff<CR>
noremap <C-Down> :t.<CR>
noremap <C-j> :t.<CR>
" Remap CTRL F to Files
noremap <silent> <C-f> :Files<CR>
" Find files using Telescope command-line sugar.
nnoremap ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" Coc Find Definition, type, implementation and references
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Window Splitting
nmap ss :split<RETURN><C-w>w
nmap sv :vsplit<RETURN><C-w>w

" Movin between windows
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
" Open NERDTree with CTRL N
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Format using Coc Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Replace
vnoremap <leader>R "hy:%s/<C-r>h//gc<left><left><left>

"Use tab for trigger completion with characters ahead and navigate.
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" remapping UltiSnip
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Functions
" --------------------------------------------------------
" Function for COC,move with tab
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Close Buffer and save if not saved
function! s:closeBuffer()	
	let state = &mod
	if (state == 1)
		echo 'File is modified... Saving.'
		w!	
		bd!
	else
		echo 'Closing current buffer'	
		bd!
	endi
endfunction
" -------------------------------------------------------
