return{
"neovim/nvim-lspconfig",
config = function()
     vim.lsp.enable('pyright')
     vim.lsp.enable('pylsp')
     -- :h vim.lsp.buf
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
     vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})



     vim.diagnostic.config({
  virtual_text = {
    prefix = "",
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})
end

}
