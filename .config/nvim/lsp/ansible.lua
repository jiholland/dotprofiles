-- ~/.config/nvim/lsp/ansible.lua

return {
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml.ansible" },
}
