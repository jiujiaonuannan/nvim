local packer = require('packer')
packer.startup(function(use)
  -- Packer 可以管理自己本身
  use('wbthomason/packer.nvim')

  -------------------------- plugins -----------------------------------------
  -- nvim-tree
  use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
  -- bufferline
  use({ 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } })
  -- lualine
  use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
  use('arkav/lualine-lsp-progress')
  -- telescope
  use({ 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } })
  -- telescope extensions
  use('LinArcX/telescope-env.nvim')
  -- dashboard-nvim
  use('glepnir/dashboard-nvim')
  -- project
  use('ahmedkhalf/project.nvim')
  -- treesitter
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

  -- tokyonight
  use('folke/tokyonight.nvim')
  -- tokyonight
  use('folke/tokyonight.nvim')
  -- OceanicNext
  use('mhartington/oceanic-next')
  -- gruvbox
  use({ 'ellisonleao/gruvbox.nvim', requires = { 'rktjmp/lush.nvim' } })
  -- nord
  use('shaunsingh/nord.nvim')
  -- onedark
  use('ful1e5/onedark.nvim')
  -- nightfox
  use('EdenEast/nightfox.nvim')
  --------------------- LSP -------------------
  -- lspconfig
  use({ 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' })
  -- 补全引擎
  use('hrsh7th/nvim-cmp')
  -- snippet 引擎
  use('hrsh7th/vim-vsnip')
  -- 补全源
  use('hrsh7th/cmp-vsnip')
  use('hrsh7th/cmp-nvim-lsp') -- { name = nvim_lsp }
  use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
  use('hrsh7th/cmp-path') -- { name = 'path' }
  use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }

  -- 常见编程语言代码段
  use('rafamadriz/friendly-snippets')
  -- ui (新增)
  use('onsails/lspkind-nvim')
  -- indent-blankline
  use('lukas-reineke/indent-blankline.nvim')

  use('tami5/lspsaga.nvim')

  -- use("mhartington/formatter.nvim")
  use({ 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' })

  use('b0o/schemastore.nvim')

  use({ 'jose-elias-alvarez/nvim-lsp-ts-utils', requires = 'nvim-lua/plenary.nvim' })

  use({ 'akinsho/toggleterm.nvim' })

  -- nvim-autopairs
  use('windwp/nvim-autopairs')

  -- Comment
  use('numToStr/Comment.nvim')

  -- surround
  use('ur4ltz/surround.nvim')

  -- 你的插件列表...
end)

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]
)
