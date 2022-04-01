-- " 加载 lua/basic.lua 文件, 此行为注释 
lua require('basic')
-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置 （新增）
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")
