local status, _ = pcall(vim.cmd, "colorscheme nord")

if not status then
  print("Colorscheme not found")
  return
end
