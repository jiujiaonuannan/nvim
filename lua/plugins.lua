local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'

	 -------------------------- plugins -------------------------------------------
    -- nvim-tree (新增)
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
		-- bufferline (新增)
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
		 -- lualine (新增)
		 use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
		 use("arkav/lualine-lsp-progress"

	 -- tokyonight
	 use("folke/tokyonight.nvim")
	 -- OceanicNext
	 use("mhartington/oceanic-next")
	 -- gruvbox
	 use({
		 "ellisonleao/gruvbox.nvim",
		 requires = {"rktjmp/lush.nvim"}
	 })
	 -- zephyr
	 -- use("glepnir/zephyr-nvim")
	 -- nord
	 use("shaunsingh/nord.nvim")
	 -- onedark
	 use("ful1e5/onedark.nvim")
	 -- nightfox
	 use("EdenEast/nightfox.nvim")
	 -- telescope extensions
	 use "LinArcX/telescope-env.nvim"
	-- dashboard-nvim (新增)
	 use("glepnir/dashboard-nvim")
	 -- project
	 use("ahmedkhalf/project.nvim")

	 -- nvim-tree (新增)
	 use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
	 -- telescope （新增）
	 use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
end)

-- 每次保存 plugins.lua 自动安装插件
pcall(vim.cmd, [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])