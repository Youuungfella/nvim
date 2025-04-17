vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({
      apply = true,
      filter = function(action)
        return action.title:match('Convert to range loop')  -- Фильтр по нужным code action
      end,
    })
  end,
})

