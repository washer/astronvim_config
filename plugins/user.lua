return {
  "nvim-lua/plenary.nvim",
  "neanias/everforest-nvim",
  "nvim-pack/nvim-spectre",
  "jvgrootveld/telescope-zoxide",
  {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
        next = "<C-;>",
        dismiss = "<C-k>",
    }
  },
      })
  end,
  },
  { 
    "petertriho/nvim-scrollbar", 
    config = function()
      require("scrollbar").setup()
    end,
    lazy = false,
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup({
        vim.diagnostic.config({
          virtual_text = false,
        }),
      })
    end,
    event = "User Astrofile",
  },
  {
  "ThePrimeagen/harpoon",
    config = function()
      require("telescope").load_extension('harpoon')
    end
  },

}

