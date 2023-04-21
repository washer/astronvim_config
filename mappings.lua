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
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>t"] = { "<cmd>TestFile<cr>" }, 
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --
    -- Harpoon
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end
    },
    ["<leader>hm"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end
    },
    ["<leader>hj"] = {
      function()
        require("harpoon.ui").nav_next()
      end
    },
    ["<leader>hf"] = {
      function()
        require("harpoon.ui").nav_prev()
      end
    },
    ["<leader>fH"] = { "<cmd>Telescope harpoon marks<cr>"},


    -- Navbuddy
    ["<leader>N"] = { "<cmd>Navbuddy<cr>" }, -- change description but the same command
    -- lsp-lines
    ["<leader>L"] = {
      function()
        require("lsp_lines").toggle()
      end,
      desc = "Toggle lsp_lines"
    },



    -- Spectre

    vim.keymap.set('n', '<leader>s', '<cmd>lua require("spectre").open()<CR>', {
      desc = "Open Spectre"
    }),
    vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
      desc = "Search current word"
    }),
    vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
      desc = "Search current word"
    }),
    vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
      desc = "Search on current file"
    })

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
