local partial = {}

partial.setup = function()
  -- load extenison.
  require'telescope'.load_extension('project')

end

return partial

