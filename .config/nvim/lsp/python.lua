-- pip install pyright

return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
}
