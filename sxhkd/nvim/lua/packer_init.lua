-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end


-- Install plugins
return packer.startup(function(use)
  
  -- VScode
  use 'easymotion/vim-easymotion'
  -- Statusline
  use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }

  -- Packer para plugins
  use 'wbthomason/packer.nvim'

  -- Esquemas de colores
  use 'navarasu/onedark.nvim' 
  use 'tanvirtin/monokai.nvim' 
  use { 'rose-pine/neovim', as = 'rose-pine' } 

  -- Bracket completion
  use 'rstacruz/vim-closer'

  use { "ellisonleao/gruvbox.nvim" }
  use 'ms-jpq/coq_nvim'

  -- Coloreado de sintaxis
  use 'nvim-treesitter/nvim-treesitter'

  -- Buffers abiertos
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'} 

  -- Configurations for nvim LSP
  use  {'neovim/nvim-lspconfig'}
  use  {'williamboman/mason.nvim'}
  use  {'williamboman/mason-lspconfig.nvim'}
  -- Arbol del directorio de trabajo
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', 
  },
  tag = 'nightly' 
}
    -- Autocompletado
  use    {'hrsh7th/nvim-compe'}
  
  if packer_bootstrap then
        require('packer').sync()
    end

end)
