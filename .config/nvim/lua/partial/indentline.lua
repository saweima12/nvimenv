local partial = {}
local gset = vim.api.nvim_set_var

partial.setup = function()

  gset("indent_blankline_show_current_context", true)

  require('indent_blankline').setup {
    filetype_exclude = { "dashboard" },
    buftype_exclude = {"terminal", "nofile", "nowrite", "help", "quickfix"},
    use_treesitter = true,
    show_trailing_blankline_indent = false,
    show_current_context = true,
  }
end

return partial
