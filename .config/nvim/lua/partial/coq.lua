local partial = {}
local gset = vim.api.nvim_set_var


partial.setup = function()
  gset("coq_settings", {
    auto_start = true,
    keymap = {
      manual_complete = "<c-p>"


    }

  })
end



return partial
