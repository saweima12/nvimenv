local install_servers = require('nvim-lsp-installer.servers')
local gset = vim.api.nvim_set_var
local partial = {}


-- loading lsp.%s module for configure lsp setting.
partial.setup = function()
  local servers = {}
  servers = install_servers.get_installed_servers()
  --gset("completion_enable_snippet", "UltiSnips")

  for _, server in pairs(servers) do
    local config = partial.make_config()
    local lsp_ext_path = string.format("lsp.%s", server.name)

    local ok, lspconf = pcall(require, lsp_ext_path)

    if ok then
      -- config attach
      lspconf.attach(config)
    end
    server:setup(config)
  end
end

-- generate lsp config base.
partial.make_config = function()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  -- add snippet supoort.
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  return {
    capabiities = capabilities,
    on_attach=function(client, bufnr)
      vim.lsp_attach_keybind(client, bufnr)
      return require('completion').on_attach(client, bufnr)
    end
  }
end

-- add autoreload hook.

--lspinstall.post_install_hook = function()
--  partial.setup()
--  vim.cmd("bufdo e")
--end

return partial
