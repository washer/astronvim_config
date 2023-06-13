return {
  "nvim-lua/plenary.nvim",
  "folke/neodev.nvim",
  "neanias/everforest-nvim",
  "nvim-pack/nvim-spectre",
  "jvgrootveld/telescope-zoxide",
  {
    "svermeulen/vim-cutlass",
    lazy = false
  },
  "folke/tokyonight.nvim",
  "jacoborus/tender.vim",
  "rebelot/kanagawa.nvim",
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  {
    "savq/melange-nvim",
    termguicolors = true
  },
  {
    "rmagatti/goto-preview",
    lazy = false
  },
  {
    "mg979/vim-visual-multi",
    lazy = false
  },
  {
    "echasnovski/mini.indentscope",
    version = false,
    config = function() require("mini.indentscope").setup() end,
    lazy = false,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function() require("scrollbar").setup() end,
    lazy = false,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup {
        vim.diagnostic.config {
          virtual_text = false,
          virtual_lines = false,
        },
      }
    end,
    event = "User Astrofile",
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup {
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#10B981" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
          test = { "Identifier", "#FF00FF" },
        },
      }
    end,
  },
  {
    "ThePrimeagen/harpoon",
    config = function() require("telescope").load_extension "harpoon" end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function() require("nvim-surround").setup {} end,
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup {
        extra_groups = {
          "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
          "NvimTreeNormal", -- NvimTree
        },
      }
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
      }
    end,
  },
  {
    "dmmulroy/tsc.nvim",
    config = function() require("tsc").setup() end,
  },
}
