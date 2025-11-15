return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufWritePost" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			-- C and C++
			c = { "clangtidy" },
			cpp = { "clangtidy" },

			-- Rust
			rust = { "clippy" },
		}

		-- Run linters automatically on save
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}

