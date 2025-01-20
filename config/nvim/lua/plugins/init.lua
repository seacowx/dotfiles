return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "github/copilot.vim",
    lazy = false
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "kkoomen/vim-doge", lazy = false
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = { }
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    lazy = false
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
  },
  {
    'm-demare/hlargs.nvim',
    lazy = false,
  },
  {
    "karb94/neoscroll.nvim",
    config = function ()
      require('neoscroll').setup({})
    end
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    config = function()
        require('tiny-inline-diagnostic').setup()
    end
  },
  -- {
  -- "folke/noice.nvim",
  -- event = "VeryLazy",
  -- opts = {
  --   -- add any options here
  -- },
  -- dependencies = {
  --   -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --   "MunifTanjim/nui.nvim",
  --   -- OPTIONAL:
  --   --   `nvim-notify` is only needed, if you want to use the notification view.
  --   --   If not available, we use `mini` as the fallback
  --   "rcarriga/nvim-notify",
  --   }
  -- },
  {
    "nvzone/showkeys",
    cmd = "ShowkeysToggle",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  {
    "nvzone/timerly",
    cmd = "TimerlyToggle",
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({})
    end
  },
}
