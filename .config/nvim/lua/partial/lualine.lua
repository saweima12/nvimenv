local partial = {}

partial.setup = function()
  require('lualine').setup{
    options = { theme = 'dracula'},
    extensions = { 'quickfix', 'nvim-tree' }
  }
end


return partial
