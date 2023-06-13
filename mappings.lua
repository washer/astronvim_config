-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", {
      desc = "replace variable under cursor",
    }),
    vim.keymap.set("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<cr>", {}),
    -- vim.keymap.set("n", "<leader>r", "<cmd>LspRename()<CR>", {
    --   desc = "Replace variable under cursor",
    -- }),

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- ["<leader>t"] = { "<cmd>TestFile<cr>" },
    -- ["<leader>t"] = {
    --   function() require("neotest").run.run(vim.fn.expand "%") end,
    -- },
    ["<leader>t"] = {
      function() require("neotest").run.run { strategy = "dap" } end,
    },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Harpoon

    ["<leader>h"] = false,

    ["<leader>ha"] = {
      function() require("harpoon.mark").add_file() end,
    },
    ["<leader>hm"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<leader>hj"] = {
      function() require("harpoon.ui").nav_next() end,
    },
    ["<leader>hf"] = {
      function() require("harpoon.ui").nav_prev() end,
    },

    ["<leader>h1"] = {
      function() require("harpoon.ui").nav_file(1) end,
    },
    ["<leader>h2"] = {
      function() require("harpoon.ui").nav_file(2) end,
    },
    ["<leader>h3"] = {
      function() require("harpoon.ui").nav_file(3) end,
    },
    ["<leader>h4"] = {
      function() require("harpoon.ui").nav_file(4) end,
    },
    ["<leader>h5"] = {
      function() require("harpoon.ui").nav_file(5) end,
    },
    ["<leader>h6"] = {
      function() require("harpoon.ui").nav_file(6) end,
    },
    ["<leader>h7"] = {
      function() require("harpoon.ui").nav_file(7) end,
    },
    ["<leader>h8"] = {
      function() require("harpoon.ui").nav_file(8) end,
    },
    ["<leader>h9"] = {
      function() require("harpoon.ui").nav_file(9) end,
    },
    ["<leader>h0"] = {
      function() require("harpoon.ui").nav_file(10) end,
    },
    -- for i=1,9,+1 do
    --   ["<leader>h" .. i] = {
    --   function()
    --     require("harpoon.ui").nav_file(i)
    --   end
    --   },
    -- end

    ["<leader>fH"] = { "<cmd>Telescope harpoon marks<cr>" },

    -- Navbuddy

    ["<leader>N"] = { "<cmd>Navbuddy<cr>" }, -- change description but the same command

    -- lsp-lines

    ["<leader>L"] = {
      function() require("lsp_lines").toggle() end,
      desc = "Toggle lsp_lines",
    },

    -- vs-tasks

    ["<leader>fv"] = { "<cmd>lua require('telescope').extensions.vstask.launch()<cr>" },

    -- Spectre

    vim.keymap.set("n", "<leader>s", '<cmd>lua require("spectre").open()<CR>', {
      desc = "Open Spectre",
    }),
    vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
      desc = "Search current word",
    }),
    vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
      desc = "Search current word",
    }),
    vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
      desc = "Search on current file",
    }),

    --
    ["<leader>fp"] = {
      function() require("telescope").extensions.project.project {} end,
    },


    ["<leader>ft"] = { "<cmd>TodoTelescope<cr>" },


    -- [z<leader>fr"] = {
    --
    -- }

    -- goto-preview

    ["gpd"] = { "<cmd>lua require('goto-preview').goto_preview_definition()<cr>" },
    ["gpt"] = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>" },
    ["gpi"] = { "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>" },
    ["gpr"] = { "<cmd>lua require('goto-preview').goto_preview_references()<cr>" },
    ["gP"] = { "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
