local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

return require("packer").startup(function()
	use {
	    "wbthomason/packer.nvim",
	    --event = "VimEnter"
	}
	use "neovim/nvim-lspconfig"
	use "hrsh7th/nvim-compe"
	use "hrsh7th/vim-vsnip"
	use "norcalli/nvim-colorizer.lua"
	use "folke/tokyonight.nvim"
	use "kyazdani42/nvim-web-devicons"
	use {"nvim-telescope/telescope.nvim", requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}}
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use {"hoob3rt/lualine.nvim", requires = {{"kyazdani42/nvim-web-devicons", opt = true}, {"ryanoasis/vim-devicons", opt = true}}}
	use {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons"}}
	use {"romgrk/barbar.nvim", requires = {"kyazdani42/nvim-web-devicons"}}
end);
