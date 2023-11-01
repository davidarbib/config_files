vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("n", "<leader>t", "<Cmd>vsp<cr><Cmd>term<cr>")
