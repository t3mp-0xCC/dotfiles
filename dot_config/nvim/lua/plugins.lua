local plugins =  {

  -- UI
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruvbox-material]])
      require("config/gruvbox-material")
    end
  },

  {
		"vim-airline/vim-airline",
		lazy = false,
		priority = 1000,
		dependencies = {
			"vim-airline/vim-airline-themes",
			"ryanoasis/vim-devicons", 
		},
    config = function()
      require("config/vim-airline")
    end
	},

  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
        init = function()
          -- disable rtp plugin, as we only need its queries for mini.ai
          -- In case other textobject modules are enabled, we will load them
          -- once nvim-treesitter is loaded
          require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
          load_textobjects = true
        end,
      },
    },
    cmd = { "TSUpdateSync" },
    keys = {
      { "<c-space>", desc = "Increment selection" },
      { "<bs>", desc = "Decrement selection", mode = "x" },
    }
  },
  -- LSP
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional
      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  },
  
  -- Which-key
  {
    'folke/which-key.nvim',
    lazy = true,
  },

}

return plugins
