local on_attach = function()
	-- buffer = 0 means set this for only the current buffer
	-- default behavior is to set it globally
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})

	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})

	vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer=0})
	vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
end

require("lspconfig")["ccls"].setup{
	on_attach = on_attach,
}

require("lspconfig")["rust_analyzer"].setup{
	on_attach = on_attach,
}

require("lspconfig")["pyright"].setup{
	on_attach = on_attach,
}

require("lspconfig")["texlab"].setup{
	on_attach = on_attach,
}
local cmp = require "cmp"
cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
	}, {
		{ name = 'buffer' },
	})
})
