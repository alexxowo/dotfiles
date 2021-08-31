call plug#begin('~/.config/nvim/plugged')
	" Airline plug	
	" Plug 'vim-airline/vim-airline'
	" Plug 'vim-airline/vim-airline-themes'
	Plug 'akinsho/bufferline.nvim'
  Plug 'hoob3rt/lualine.nvim'
  " Themes
	Plug 'joshdick/onedark.vim'
	Plug 'morhetz/gruvbox'
	Plug 'overcache/NeoSolarized'
	Plug 'hzchirs/vim-material'
  Plug 'ntk148v/vim-horizon'
  "Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
  " Lspconfig
  Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
  Plug 'folke/lsp-colors.nvim'
  " NERDTree
	Plug 'scrooloose/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'

	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'nvim-treesitter/playground'
	" Productive plugins
	Plug 'Yggdroot/indentLine'
	Plug 'jiangmiao/auto-pairs'	
	Plug 'AndrewRadev/tagalong.vim'	
  " VIm Fugitive
  Plug 'tpope/vim-fugitive'
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
