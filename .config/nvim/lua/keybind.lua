local map = vim.api.nvim_set_keymap
local nore = { noremap = true, silent = false}
local plug = { silent = false }

-- ::: NvimTree keybind :::
--map('n', '<leader>v', ':NvimTreeToggle<CR>', nore)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', nore)
map('n', '<leader>n', ':NvimTreeFindFile<CR>', nore)

-- ::: BarBar keybind (BufferLine) :::
-- Nvimtree combine
map('n', '<leader>v',  [[<CMD>lua require('partial.barbar').toggle()<CR> ]], nore)
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', nore)
map('n', '<A-.>', ':BufferNext<CR>', nore)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', nore)
map('n', '<A->>', ':BufferMoveNext<CR>', nore)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', nore)
map('n', '<A-2>', ':BufferGoto 2<CR>', nore)
map('n', '<A-3>', ':BufferGoto 3<CR>', nore)
map('n', '<A-4>', ':BufferGoto 4<CR>', nore)
map('n', '<A-5>', ':BufferGoto 5<CR>', nore)
map('n', '<A-6>', ':BufferGoto 6<CR>', nore)
map('n', '<A-7>', ':BufferGoto 7<CR>', nore)
map('n', '<A-8>', ':BufferGoto 8<CR>', nore)
map('n', '<A-9>', ':BufferGoto 9<CR>', nore)
map('n', '<A-0>', ':BufferLast<CR>', nore)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', nore)
map('n', '<A-S-c>', ':BufferClose!<CR>', nore)

-- ::: Input Support keybind :::
-- simple spacing.
map('n', '<tab>',  ':><CR>', nore)
map('n', '<S-tab>',  ':<<CR>', nore)
map('i', '<S-tab>',  '<C-d>', nore)

map('n', '<A-l>',  ":><CR>", nore)
map('n', '<A-h>',  ":<<CR>", nore)
map('v', '<A-l>',  ":><CR>gvl", nore)
map('v', '<A-h>',  ":<<CR>gvh", nore)
map('i', '<A-l>',  "<esc>:><CR>", nore)
map('i', '<A-h>',  "<esc>:<<CR>", nore)

-- simple move one line
map('n', '<A-k>', ':m -2<CR>', nore)
map('n', '<A-j>', ':m +1<CR>', nore)
map('v', '<A-j>', ":m '>+1<CR>gv=gv", nore)
map('v', '<A-k>', ":m '<-2<CR>gv=gv", nore)
map('i', '<A-j>', "<esc>:m .+1<CR>==", nore)
map('i', '<A-k>', "<esc>:m .-2<CR>==", nore)
-- qucick move pointer
map('n', 'j', '<Plug>(accelerated_jk_gj)', plug)
map('n', 'k', '<Plug>(accelerated_jk_gk)', plug)

-- ::: Tagbar keybind :::
map('n', '<leader>t', ':Vista!!<CR>', nore)

-- ::: Telescope keybind :::
map('n', '<leader>ff', ':Telescope find_files<CR>', nore)
map('n', '<leader>fh', ':Telescope oldfiles<CR>', nore)
map('n', '<leader>fcc', ':Telescope colorscheme<CR>', nore)
map('n', '<leader>flg', ':Telescope live_grep<CR>', nore)
map('n', '<leader>fb', ':Telescope buffers<CR>', nore)
map('n', '<leader>fgs', ':Telescope git_status<CR>', nore)
map('n', '<leader>fgc', ':Telescope git_commits<CR>', nore)
map('n', '<leader>fga', ':Telescope git_stash<CR>', nore)
map('n', '<leader>fp', ':Telescope project<CR>', nore)

-- ::: Dashboard Session Support :::
map('n', '<leader>ss', ':SessionSave<CR>', nore)
map('n', '<leader>sl', ':SessionLoad<CR>', nore)
map('n', '<leader>cn', ':DashboardNewFile<CR>', nore)
map('n', '<leader>fm', ':DashboardJumpMark<CR>', nore)

-- ::: Hop keybind f::
map('n', '<leader>sf', ':HopChar2<CR>', nore)

-- ::: Undo BreakPoint :::
map('i', ',', ',<C-g>u', nore)
map('i', '[', '[<C-g>u', nore)
map('i', '.', '.<C-g>u', nore)
map('i', '!', '!<C-g>u', nore)
map('i', '?', '?<C-g>u', nore)


-- ::: Lsp support keybind :::
-- Register in vim table, for LSP setup use.
vim.lsp_attach_keybind = function (client, bufnr)
  local function bmap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function bopt(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  bopt('omnifunc', 'v:lua.vim.lsp.omnifunc')

  bmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', nore)
  bmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', nore)
  bmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', nore )
  bmap('n', 'gi', '<cmd>lua vim.lsp.buf.implement<CR>', nore)
  bmap('n', 'gr', '<cmd>lua vim.lsp.buf.reference<CR>', nore)
  bmap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', nore)
  bmap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', nore)
  bmap('n', '<space>f', '<cmd>lua vim.lsp.buf.formating()<CR>', nore)
  bmap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', nore)
  bmap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev<CR>', nore)
  bmap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next<CR>' , nore)
  bmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', nore)
end


-- ::: Terminal Extension Keymap :::
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts) vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

