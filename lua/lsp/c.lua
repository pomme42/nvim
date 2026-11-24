vim.lsp.config['c_lsp'] = {
  cmd = { 'clangd' },
  filetypes = { 'c' },
  root_markers = { '.git', 'LICENSE', 'README.md' },
}
vim.lsp.enable("c_lsp")
