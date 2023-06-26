local opt = vim.opt

-- 行号
-- opt.relativenumber = true
opt.number = true

-- 更改tab键占空格
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = true

opt.ignorecase = true
opt.smartcase = true

-- 设置突出
opt.cursorline = true

-- 设置配色方案
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- 配置空格键
opt.backspace = "indent,eol,start"

-- 配置剪贴板和系统保持一致
opt.clipboard:append("unnamedplus")

-- 配置窗口的分割操作
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.ruler = true
