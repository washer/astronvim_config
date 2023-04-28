return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            "target",
          },
        },
      }
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope-project.nvim",
    config = function() require("telescope").load_extension "project" end,
  },
}
