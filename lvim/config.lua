-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- Custom leader and shortcuts
lvim.leader = ","

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["<leader>w"] = "<esc>:w<cr>"
lvim.keys.normal_mode["<leader>q"] = ":q<cr>"
lvim.keys.normal_mode["<leader>d"] = ":t.<cr>"
lvim.keys.normal_mode["<leader>>"] = ":bnext<cr>"
lvim.keys.normal_mode["<leader><"] = ":bprev<cr>"
lvim.keys.normal_mode["<leader>x"] = ":bdelete<cr>"
lvim.keys.normal_mode["<leader>v"] = ":vsp<cr>"
lvim.keys.normal_mode["<leader>s"] = ":sp<cr>"
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm<cr>"

lvim.lsp.installer.setup.automatic_installation = true
lvim.format_on_save.enabled = true


-- Plugins:
lvim.plugins = {
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
}


-- Setup Formatters
local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    name = "prettier",
    args = { "--print-width", "100" },
    filetypes = { "typescript", "typescriptreact" },
  },
}
