local gset = vim.api.nvim_set_var
local partial = {}

partial.setup = function()
  gset("dashboard_default_executive", "telescope")
  gset("dashboard_custom_shortcut", {
    find_file = '<leader> f f  ',
    find_word = '<leader> f l g',
    find_history = '<leader> f h  ',
    change_colorscheme = '<leader> f c c',
    last_session = '<leader> s l  ',
    new_file = '<leader> s s  ',
    book_marks = '<leader> f m  '
  })
end

return partial
