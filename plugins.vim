call plug#begin('~/.vim/plugged')

" Cool icons
Plug 'ryanoasis/vim-devicons'

" Better hilighting and indenting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" base to use neovim built-in lsp
Plug 'neovim/nvim-lspconfig'

" Good config for lsp
Plug 'tami5/lspsaga.nvim'

" Colorful statusline
Plug 'hoob3rt/lualine.nvim'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Some colorschemes
Plug 'marko-cerovac/material.nvim'

" A nice statusline
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" Aucomplete plugin
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}


call plug#end()

" -- load the plugins config ---
source ~/.config/nvim/config-material.vim
luafile ~/.config/nvim/config-lsp.lua
luafile ~/.config/nvim/config-lspsaga.lua
luafile ~/.config/nvim/config-treesitter.lua
source ~/.config/nvim/config-floatterm.vim
luafile ~/.config/nvim/config-galaxyline.lua

