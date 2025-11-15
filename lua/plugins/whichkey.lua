return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function ()
			local wk = require("which-key")
			wk.add({
				{ "<leader>l",  group = "LSP" },
				{ "<leader>ld", vim.lsp.buf.definition,      desc = "Definition" },
				{ "<leader>lr", vim.lsp.buf.references,      desc = "References" },
				{ "<leader>li", vim.lsp.buf.implementation,  desc = "Implementation" },
				{ "<leader>lt", vim.lsp.buf.type_definition, desc = "Type Definition" },
				{ "<leader>lh", vim.lsp.buf.hover,           desc = "Hover Docs" },
				{ "<leader>la", vim.lsp.buf.code_action,     desc = "Code Actions" },
				{ "<leader>lrn",vim.lsp.buf.rename,          desc = "Rename Symbol" },
			})
		end
	},
}
