return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},

		formatters_by_ft = {
			lua = { "stylua" },

			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },

			python = { "isort", "black" },

			go = { "goimports", "gofmt" },

			rust = { "rustfmt", lsp_format = "fallback" },

			["_"] = { "trim_whitespace" },
		},

		default_format_opts = {
			lsp_format = "fallback",
			timeout_ms = 500,
			condition = function(ctx)
				return ctx.filename ~= nil and ctx.filename ~= ""
			end,
		},

		notify_on_error = true,
	},
}
