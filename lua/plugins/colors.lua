local function enable_transparency()
	-- Standard UI
	vim.api.nvim_set_hl(0, "Normal",       { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC",     { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder",  { bg = "none" })

	-- Popup & menu windows
	vim.api.nvim_set_hl(0, "Pmenu",        { bg = "none" })
	vim.api.nvim_set_hl(0, "PmenuSel",     { bg = "none" })
	vim.api.nvim_set_hl(0, "PmenuSbar",    { bg = "none" })
	vim.api.nvim_set_hl(0, "PmenuThumb",   { bg = "none" })

	-- Telescope
	vim.api.nvim_set_hl(0, "TelescopeNormal",        { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder",        { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptNormal",  { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })

	-- -- Other windows
	-- vim.api.nvim_set_hl(0, "SignColumn",   { bg = "none" })
	-- vim.api.nvim_set_hl(0, "LineNr",       { bg = "none" })
	-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "Folded",       { bg = "none" })
	-- vim.api.nvim_set_hl(0, "FoldColumn",   { bg = "none" })
	-- vim.api.nvim_set_hl(0, "VertSplit",    { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", fg = "#7aa2f7" })
	vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none", fg = "#f7768e" })
	vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { bg = "none", fg = "#e0af68" })
	vim.api.nvim_set_hl(0, "DiagnosticSignInfo",  { bg = "none", fg = "#7aa2f7" })
	vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { bg = "none", fg = "#9ece6a" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenu",          { bg = "none" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder",    { bg = "none" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "none" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuDoc",       { bg = "none" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuDocBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "CmpDoc", { bg = "none" })
	vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#7aa2f7", bg = "none" })



end

return {
	{
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd.colorscheme("tokyonight")
			enable_transparency()
		end
	},
}
