-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
--
-- if not status then
--   print("Colorscheme not found")
--   return
-- end

local status, tokyonight = pcall(require, 'tokyonight')
if not status then
  print("Something went wrong")
end

local opts = {
  style = "night",
  transparent = false,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
}

tokyonight.setup(opts)
tokyonight.load()

vim.cmd[[colorscheme tokyonight]]
