return {{ 
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
        handlers = {
            node2 = function(source_name)
                local dap = require "dap"
                dap.adapters.node2 = {
                    type = "executable",
                    command = "node",
                    args = {"--inspect",
                            vim.env.HOME .. "~/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js"}
                }
            end,



            require('dap.ext.vscode').load_launchjs(nil, { node = {'javascript', 'typescript' } })
        }
    }

}}
