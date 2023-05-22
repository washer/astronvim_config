return {
  "nvim-lua/plenary.nvim",
  "folke/neodev.nvim",
  "neanias/everforest-nvim",
  "nvim-pack/nvim-spectre",
  "jvgrootveld/telescope-zoxide",
  "mg979/vim-visual-multi",
  "folke/tokyonight.nvim",
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
}
