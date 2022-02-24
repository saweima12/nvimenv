local partial = {}

partial.setup = function ()
  require'nvim-tree'.setup {
    git={
      ignore=false
    }
  }

end

return partial


