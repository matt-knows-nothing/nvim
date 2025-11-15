require("config.options")
require("config.mappings")
require("config.lazy")
require("config.lsp-keybinds")
require("config.formatting")

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		require("config.formatting").format()
	end,
})
