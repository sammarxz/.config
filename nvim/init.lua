-- Packer Setup
require("sammarxz.plugins-setup")

-- Core Config
require("sammarxz.core.options")
require("sammarxz.core.keymaps")
require("sammarxz.core.colorscheme")

-- Plugins Config
require("sammarxz.plugins.comment")
require("sammarxz.plugins.nvim-tree")
require("sammarxz.plugins.lualine")
require("sammarxz.plugins.telescope")
require("sammarxz.plugins.nvim-cmp")
require("sammarxz.plugins.autopairs")
require("sammarxz.plugins.gitsigns")
require("sammarxz.plugins.treesitter")
require("sammarxz.plugins.toggleterm")

-- Lsp Plugins
require("sammarxz.plugins.lsp.mason")
require("sammarxz.plugins.lsp.lspsaga")
require("sammarxz.plugins.lsp.lspconfig")
require("sammarxz.plugins.lsp.null-ls")
