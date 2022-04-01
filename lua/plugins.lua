local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'

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
   -- 你的插件列表...
end)

-- 每次保存 plugins.lua 自动安装插件
pcall(vim.cmd, [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])