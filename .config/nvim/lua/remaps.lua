local function map(m, k, v, opts)
	local options = { noremap = true }
	vim.keymap.set(m, k, v, options, opts)
end

map('n','<Leader>h','<cmd>wincmd h<CR>')
map('n','<Leader>j','<cmd>wincmd j<CR>')
map('n','<Leader>k','<cmd>wincmd k<CR>')
map('n','<Leader>l','<cmd>wincmd l<CR>')
map('n','<Leader>pv','<cmd>wincmd v<CR> <cmd>Ex<CR>')
map('n','<Leader>+','<cmd>vertical resize +5<CR>')
map('n','<Leader>-','<cmd>vertical resize -5<CR>')
map('n','<Leader>m','<cmd>!make<CR>')
