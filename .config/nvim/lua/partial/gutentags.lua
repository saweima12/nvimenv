local gset = vim.api.nvim_set_var
local home_path = os.getenv('HOME')

local partial = {}

partial.setup = function()
  -- gutentags_plugin setting.
  gset("gutentags_project_root", { '.root', '.svn', '.git', '.project', 'package.json'})
  gset("gutentags_ctags_tagfile", ".tags")
  gset("gutentags_generate_on_new", true)
  gset("gutentags_generate_on_missing", true)
  gset("gutentags_generate_on_write", true)
  gset("gutentags_generate_on_empty_buffer", true)
  gset("gutentags_add_default_project_roots", false)
  -- setting gtags environment.
  gset("GTAGSLABEL", "native-pygments")
  gset("GTAGSCONF", vim.fn.expand("~/globalrc"))

  -- Setting guntentags Cache directory
  local cache_path = vim.fn.expand("~/.cache/tags")
  gset('gutentags_cache_dir', cache_path)

  if vim.fn.isdirectory(cache_path) == 0 then
    vim.fn.mkdir(cache_path, 'p')
  end

  -- setting modules
  local modules = {}
  if vim.fn.executable("ctags") then
    table.insert(modules, "ctags")
  end

  if vim.fn.executable("gtags-cscope") and
    vim.fn.executable("gtags") then
    table.insert(modules, "gtags_cscope")
  end
  
  gset("gutentags_modules", modules)

  gset("gutentags_ctags_extra_args", {
    "--fields=+niazS",
    "--extra=+q",
    "--c++-kinds=+pxI",
    "--c-kinds=+px"
  })

  gset("gutentags_auto_add_gtags_cscope", 0)

  -- Setting Ctags exclude file and directory
  local exclude_list = {
    '*.git', '*.svg', '*.hg',
    '*/tests/*',
    'build',
    'dist',
    '*sites/*/files/*',
    'bin',
    'node_modules',
    'bower_components',
    'cache',
    'compiled',
    'docs',
    'example',
    'bundle',
    'vendor',
    '*.md',
    '*-lock.json',
    '*.lock',
    '*bundle*.js',
    '*build*.js',
    '.*rc*',
    '*.json',
    '*.min.*',
    '*.map',
    '*.bak',
    '*.zip',
    '*.pyc',
    '*.class',
    '*.sln',
    '*.Master',
    '*.csproj',
    '*.tmp',
    '*.csproj.user',
    '*.cache',
    '*.pdb',
    'tags*',
    'cscope.*',
    -- '*.css',
    -- '*.less',
    -- '*.scss',
    '*.exe', '*.dll',
    '*.mp3', '*.ogg', '*.flac',
    '*.swp', '*.swo',
    '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
    '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
  }

  gset("gutentags_ctags_exclude", exclude_list)
end

return partial
