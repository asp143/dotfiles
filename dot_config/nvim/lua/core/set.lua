-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'
vim.wo.relativenumber = true


---
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
-- Set colorscheme
vim.o.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
