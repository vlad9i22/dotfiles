vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

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

