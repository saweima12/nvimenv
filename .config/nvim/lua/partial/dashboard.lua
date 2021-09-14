local gset = vim.api.nvim_set_var
local partial = {}

partial.setup = function()
  gset("dashboard_default_executive", "telescope")
end

return partial
