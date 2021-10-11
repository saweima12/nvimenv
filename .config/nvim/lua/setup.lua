--deubg check loading
print('loading init.lua')

local set = vim.opt
local gset = vim.api.nvim_set_var

-- :::                          :::
-- ::: set environment config.  :::
-- :::
vim.wo.wrap = false
set.hidden = true
set.number = true
set.expandtab = true
set.smartindent = true
set.cursorline = true
set.termguicolors = true
set.relativenumber = true
set.tabstop = 2
set.shiftwidth = 2
set.completeopt = { "menuone", "noinsert", "noselect" }
set.mouse= set.mouse + "a"
set.shortmess = set.shortmess + "c"

-- setting vim use system's clipboard
set.clipboard = set.clipboard + "unnamedplus"



gset("user_emmet_expandabbr_key", "<C-g>")
gset("python3_host_prog", "/usr/bin/python3")

-- set colorScheme
vim.cmd("colorscheme onedark")

-- :::                                    :::
-- ::: loading and setup plugin config.   :::
-- :::                                    :::
local setup_list = {
  "barbar",
  "coq",
  "dashboard",
  "gitsigns",
  "gutentags",
  "indentline",
  "lualine",
  "lsp",
  "nvim_comment",
  "nvim_tree",
  "telescope",
  "toggleterm",
  "treesitter",
}

-- Loading
for i=1, #setup_list, 1 do
  local module_name = setup_list[i]
  local require_path = string.format("partial.%s", module_name)

  local conf = require(require_path)
  if (type(conf) == "table") then
    local ok, _  = pcall(conf.setup)
    if not ok then
      print(string.format(":: Warn :: %s 's configure not loaded", module_name))
    end
  end
end

