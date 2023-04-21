return {
  {
  "mfussenegger/nvim-dap",
  enabled = true,
  config = function()
    local dap = require('dap')
    local NODE_DIR = "/Users/msp/.local/share/nvim/mason/packages/node-debug2-adapter"

    dap.adapters.node = {
      type = "executable",
      command = "node",
      args = { NODE_DIR },
    }

    -- read .vscode/launch.json
    require('dap.ext.vscode').load_launchjs(nil, { node = {'javascript', 'typescript' } })
  end,
  }
}
