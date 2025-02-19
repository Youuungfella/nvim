local map = vim.api.nvim_set_keymap
vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
map('i', 'jk', '<Esc>', {noremap = true})
