-- shorthand as we don't want to write vim.keymap.set() everytime
local function map(m, k, v, opts)
	local options = { noremap = true }
	vim.keymap.set(m, k, v, options, opts)
end

map('n','<leader>h','<cmd>wincmd h<CR>')
map('n','<leader>j','<cmd>wincmd j<CR>')
map('n','<leader>k','<cmd>wincmd k<CR>')
map('n','<leader>l','<cmd>wincmd l<CR>')
map('n','<leader>pv',vim.cmd.Ex)
map('n','<leader>+','<cmd>vertical resize +5<CR>')
map('n','<leader>-','<cmd>vertical resize -5<CR>')
map('n','<leader>m','<cmd>!make<CR>')
map("n", "J", "mzJ`z") -- Cursor doesn't move when using J to move line from below
map("x", "<leader>p", "\"_dP") -- Preserve the text in cut buf

-- Yank to system's clipboard
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("v", "<leader>Y", "\"+Y")

-- Use delete without losing the text in cut buf
map("n", "<leader>d", "\"_d")
map("v", "<leader>d", "\"_d")
map("n", "Q", "<nop>")
