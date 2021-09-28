local partial = {}

partial.setup = function()
  -- load extenison.
  require'telescope'.load_extension('project')
  require('telescope').setup {
    file_ignore_patterns = { "./node_modules/*", "node_modules", "^node_modules/*" }

  }
end

return partial

