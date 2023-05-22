return {
  {
    "vim-test/vim-test",
    lazy = false,
    config = function()
      vim.g["test#strategy"] = "neovim"
      vim.g["test#neovim#term_position"] = "belowright"
      vim.g["test#neovim#preserve_screen"] = 1
      vim.g["test#typescript#runner"] = "jest"
      vim.g["test#javascript#runner"] = "jest"
    end,
  },
  {
    "nvim-neotest/neotest",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-vim-test",
      "antoinemadec/FixCursorHold.nvim",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            jestCommand = "npm test --",
            env = { TRANSLATIONS_PATH = "./src/utils/locale/translations.json", NODE_ENV = test, TZ = UTC },
            cwd = function(path) return vim.fn.getcwd() end,
          },
          require "neotest-vim-test" {
            ignore_file_types = { "typescript" },
          },
        },
        strategy = "dap",
      }
    end,
  },
}
