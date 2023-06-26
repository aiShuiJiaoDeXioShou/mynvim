-- 导入nightfly主题
-- vim.cmd("colorscheme nightfly")
-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme gruvbox")

-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  vim.cmd("colorscheme nightfly")
  return
end
