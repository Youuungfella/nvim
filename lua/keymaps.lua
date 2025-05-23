local map = vim.keymap.set

vim.g.mapleader = " "
map("n", " ", "<Nop>", { silent = true, remap = false })
map('i', 'jk', '<Esc>', { noremap = true, silent = true })
map('n', 'gd', function()
  vim.lsp.buf.definition()
end, { buffer = bufnr, desc = 'Go to Definition' })

map('n', 'gdv', function()
  vim.cmd('vsplit')
  vim.lsp.buf.definition()
end, { buffer = bufnr })
map('n', 'gr', function ()
	vim.lsp.buf.references()
end, {buffer = bufnr, desc = 'Show references'})
vim.api.nvim_set_keymap(
  'n',
  '<leader>ca',
  '<cmd>lua vim.lsp.buf.code_action()<CR>',
  { noremap = true, silent = true, desc = "Code Action" }
)
