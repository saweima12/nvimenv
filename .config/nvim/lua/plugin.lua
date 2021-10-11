local packer = require('packerinit')
local use = packer.use

return packer.startup(function()
  -- Packer Manage Self
  use 'wbthomason/packer.nvim'

  -- ::: Icons :::
  use 'kyazdani42/nvim-web-devicons'

  -- ::: BufferBar :::
  use 'romgrk/barbar.nvim'


  -- ::: StatusBar :::
  use 'hoob3rt/lualine.nvim'

  -- ::: DashBoard :::
  use 'glepnir/dashboard-nvim'

  -- ::: ColorScheme :::
  use 'navarasu/onedark.nvim'
  use 'mhartington/oceanic-next'
  use 'yonlu/omni.vim'

  -- ::: DiagonsticsView :::
    use { 'folke/trouble.nvim',
    config = function()
      require('trouble').setup {
      }
    end
  }

  -- ::: Tags Support :::
  -- need install gnu-global
  use 'ludovicchabant/vim-gutentags'
  use 'skywind3000/gutentags_plus'
  use 'liuchengxu/vista.vim'

  -- ::: Treesitter :::
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate"}

  -- ::: AutoComplete LSP Setting :::
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'ms-jpq/coq_nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'kkoomen/vim-doge'

  -- ::: Snippets :::
  use 'SirVer/ultisnips'

  -- ::: Whcihkey :::
  use 'folke/which-key.nvim'

  -- ::: Finder :::
  use 'nvim-telescope/telescope.nvim'
  use 'sudormrfbin/cheatsheet.nvim'
  use 'fhill2/telescope-ultisnips.nvim'
  use 'nvim-telescope/telescope-github.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'nvim-telescope/telescope-frecency.nvim'
  use 'AckslD/nvim-neoclip.lua'

  -- ::: Asynctasks:::
  use 'skywind3000/asynctasks.vim'
  use 'skywind3000/asyncrun.vim'


  -- ::: GitSupport :::
  use 'TimUntersberger/neogit'
  use "lewis6991/gitsigns.nvim"

  -- ::: Terminal :::
  use "akinsho/nvim-toggleterm.lua"

  -- ::: SmothScroll :::
  use 'psliwka/vim-smoothie'

  -- ::: Input Support :::
  use 'terrortylor/nvim-comment'
  use 'wellle/targets.vim'
  use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-ts-autotag'
  use 'xiyaowong/nvim-cursorword'
  use 'phaazon/hop.nvim'
  use 'rhysd/accelerated-jk'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-surround'
  use 'mattn/emmet-vim'

  -- ::: EditorConfig Support :::
  use 'editorconfig/editorconfig-vim'

  -- ::: WorkingDirectory Tree :::
  use 'kyazdani42/nvim-tree.lua'
end)

