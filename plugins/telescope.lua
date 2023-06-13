return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup ({
        defaults = {
          layout_strategy = 'horizontal',
          file_ignore_patterns = {
            "node_modules",
            "target",
            "build",
            "dist",
            "coverage"
          },
          mappings = {
            n = {
                  ["<leader>fR"] = {
                    function() require("telescope.builtin").lsp_references {} end,
                    desc = "List lsp references",
                  },
                }
              }
            },
        pickers = {
          live_grep = {
            theme = "dropdown",
          },
          buffers = {
            theme = "dropdown",
          },
          git_files = {
            theme = "dropdown",
          },
        }
      })
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope-project.nvim",
    config = function() require("telescope").load_extension "project" end,
  }
}
