local partial = {}
local tree_view = require('nvim-tree.view')

-- setup configure
partial.setup = function()

end

partial.open = function()
  require('bufferline.state').set_offset(31, "Explorer")
  require('nvim-tree').find_file(true)
end

partial.close = function()
  require('bufferline.state').set_offset(0)
  require('nvim-tree').close()
end

partial.toggle = function()
  if not tree_view.win_open() then
    partial.open()
  else
    partial.close()
  end

end

return partial
