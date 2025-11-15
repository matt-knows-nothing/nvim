vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
-- vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.signcolumn = "number"
vim.opt.winborder = "rounded"
-- Safe full-file indent on save (runs at BufWritePre)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- don't run for binary or special buffers
    local ft = vim.bo.filetype
    if ft == "" or vim.bo.buftype ~= "" then return end

    -- save view/cursor
    local view = vim.fn.winsaveview()

    -- join with previous undo step, perform indent silently
    -- 'silent!' hides any errors
    vim.cmd("silent! undojoin | normal! gg=G")

    -- restore view/cursor
    vim.fn.winrestview(view)
  end,
})

