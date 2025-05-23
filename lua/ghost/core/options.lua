local opt = vim.opt
local o = vim.o
local g = vim.g
local wo = vim.wo

o.cursorline = true 
o.cursorlineopt = "number"

g.netrw_banner = 0 
g.netrw_keepdir = 0
g.netrw_confirm = 0 

g.mapleader = " "
g.maplocalleader = " "

opt.guicursor = ""
opt.incsearch = true

o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

o.number = true
o.relativenumber = true
o.numberwidth = 1
o.ruler = true 

opt.shortmess:append("sI")

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true

o.updatetime = 250

opt.whichwrap:append("<>[]hl")

g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
o.laststatus = 3
o.showmode = true

opt.updatetime = 50

opt.termguicolors = true
opt.smartindent = true

opt.hlsearch = false
opt.incsearch = true

opt.wrap = false
opt.scrolloff = 10
