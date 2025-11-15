vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Go to netrw" })
vim.keymap.set("n", "<leader>o", vim.cmd.so, { desc = "Source file" })
vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Save file" })
