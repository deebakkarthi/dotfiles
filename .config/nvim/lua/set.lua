vim.opt.encoding = 'utf-8'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ea = true
vim.opt.number = true
vim.opt.wrap = false

vim.opt.undodir = os.getenv("HOME")..'/.local/share/nvim/undodir'
vim.opt.directory = os.getenv("HOME")..'/.local/share/nvim/swap'
vim.opt.backupdir = os.getenv("HOME")..'/.local/share/nvim/backup'
vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undofile = true

vim.opt.colorcolumn = '80'
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 2
vim.opt.wildmenu = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8

vim.g.mapleader = ' '

vim.g.netrw_browse_split = '0'
vim.g.netrw_banner = '0'

vim.o.t_ZH = '[3m'
vim.o.t_ZR = '[23m'

