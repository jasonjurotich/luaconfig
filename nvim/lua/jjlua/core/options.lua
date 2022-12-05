local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.cursorline = false
-- opt.signcolumn = "yes"

opt.termguicolors = true
opt.background = "dark"
opt.undofile = true

-- you cannot put spaces after commas in lua, causes an error
opt.backspace = "indent,eol,start"

-- see if this causes conflict with tmux
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true

-- this allows the dash to be part of a word like a normal letter
opt.iskeyword:append("-")

vim.opt.shortmess:append("c")
