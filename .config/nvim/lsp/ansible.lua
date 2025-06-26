-- npm install --prefix ~/.local/npm @ansible/ansible-language-server
-- ln -s ~/.local/npm/node_modules/@ansible-language-server/bin/ansible-language-server ~/.local/bin

return {
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml.ansible" },
}
