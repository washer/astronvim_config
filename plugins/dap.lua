return {
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-vscode-js").setup {
        debugger_path = vim.fn.expand "~/vscode-js-debug",
        adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
        log_file_path = "(stdpath cache)/dap_vscode_js.log",
        log_file_level = false,
        log_console_level = vim.log.levels.ERROR,
      }

      local launch_server_config_name = "Launch server"

      for _, language in ipairs { "typescript", "javascript" } do
        require("dap").configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = launch_server_config_name,
            runtimeExecutable = "npm",
            runtimeArgs = { "run", "start-env" },
            skipFiles = { "node_modules/**" },
            console = "integratedTerminal",
            cwd = "${workspaceFolder}",
          },
        }
      end
    end,
  },
}
