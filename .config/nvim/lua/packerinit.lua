--Auto install packer, if not exists.
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then

  if vim.fn.input("Install packer.nvim? (y for install)") ~= "y" then
    return
  end

  local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )

  vim.fn.mkdir(directory, 'p')

  local git_clone_cmd = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. '/packer.nvim'
  ))

  print(git_clone_cmd)
  print("Install packer.nvim...")

  return
end

vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

-- initialize pakcer setting.

return packer
