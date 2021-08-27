call plug#begin('~/.config/nvim/plugged')
	" Airline plug	
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	" Themes
	Plug 'joshdick/onedark.vim'
	Plug 'dracula/vim'
	Plug 'morhetz/gruvbox'
	Plug 'iandwelker/rose-pine-vim'	
	Plug 'overcache/NeoSolarized'
	Plug 'haishanh/night-owl.vim'
	Plug 'hzchirs/vim-material'
	
"Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
" NERDTree
	Plug 'scrooloose/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'nvim-treesitter/playground'

	" Productive plugins
	Plug 'Yggdroot/indentLine'
	Plug 'jiangmiao/auto-pairs'	
	Plug 'AndrewRadev/tagalong.vim'	
	" Jedi VIM
	" Plug 'davidhalter/jedi-vim'

	" Conquer of Completion (COC)
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
		
	" JavaScript and TypeScript support
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	
	" Snippets for react
	Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'	

  Plug 'ryanoasis/vim-devicons'
call plug#end()
