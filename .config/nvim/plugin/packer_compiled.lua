-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tassis/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/tassis/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/tassis/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/tassis/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tassis/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["accelerated-jk"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/accelerated-jk"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/asyncrun.vim"
  },
  ["asynctasks.vim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/asynctasks.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gutentags_plus = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/gutentags_plus"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-cursorword"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["omni.vim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/omni.vim"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/tassis/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
