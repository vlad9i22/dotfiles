-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- vim.opt.smartindent = true
vim.opt.cindent = true

vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.termguicolors = true


-- Find with / in caseindependent when search with lowercase,
-- With capital letters will find exact match
vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.formatprg='clangformat'

vim.opt.list = true
vim.opt.listchars='tab:>-'

-- The default is 0{,0},0),0],:,0#,!^F,o,O,e
-- I remove : from default part, because its trigering jump to the left
-- while typing std::cin for example;
vim.opt.cinkeys='0{,0},0),0],0#,!^F,o,O,e'

vim.opt.clipboard = ""

