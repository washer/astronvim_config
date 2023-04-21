-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
--
--
local eslint = require('lspconfig').eslint

eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})
--
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = { '*.tsx', '*.ts', '*.jsx', '*.js' },
--   command = 'silent! EslintFixAll',
--   group = vim.api.nvim_create_augroup('MyAutocmdsJavaScripFormatting', {}),
-- })

--
-- -- Format on save
-- -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts#neovim-08
-- local on_attach = function(client, buffer)
--   -- the Buffer will be null in buffers like nvim-tree or new unsaved files
--   if (not buffer) then
--     return
--   end
--
--   if client.supports_method("textDocument/formatting") then
--     vim.api.nvim_clear_autocmds({ group = augroup, buffer = buffer })
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       group = augroup,
--       buffer = buffer,
--       callback = function()
--         lsp_formatting(buffer)
--       end,
--     })
--   end
-- end
--
-- null_ls.setup({
--   sources = {
--     -- Prettier, but faster (daemonized)
--     null_ls.builtins.formatting.prettierd.with({
--       filetypes = { 
--         "css", "json", "jsonc","javascript", "typescript",
--         "javascript.glimmer", "typescript.glimmer",
--         "handlebars"
--       }
--     }),
--
--     -- Code actions for staging hunks, blame, etc 
--     null_ls.builtins.code_actions.gitsigns,
--     null_ls.builtins.completion.luasnip,
--
--     -- Spell check that has better tooling
--     -- all stored locally
--     -- https://github.com/streetsidesoftware/cspell
--     null_ls.builtins.diagnostics.cspell.with({
--       -- This file is symlinked from my dotfiles repo
--       extra_args = { "--config", "~/.cspell.json" }
--     }),
--     null_ls.builtins.code_actions.cspell.with({
--       -- This file is symlinked from my dotfiles repo
--       extra_args = { "--config", "~/.cspell.json" }
--     })
--     -- null_ls.builtins.completion.spell,
--   },
--   on_attach = on_attach
-- })
