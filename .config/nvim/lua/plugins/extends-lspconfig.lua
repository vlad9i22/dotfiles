return {
    "neovim/nvim-lspconfig",
    autoformat = false,
    opts = {
        cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=google",
            "--rename-file-limit=0",
            "--log=verbose"
        },
        servers = {
            clangd = {
                capabilities = {
                    textDocument = {
                        completion = {
                            completionItem = {
                                -- this disables behaviour for map snippets 
                                -- for example it won't insert weird temaplte
                                -- while wrtiing std::map<
                                snippetSupport = false,
                            },
                        },
                    },
                },
            },
            ['*'] = {
                keys = {
                    { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", has = "definition"},
                    { "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>"},
                    { "<leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>"},
                    { "<leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>"},
                    { "<leader>go", "<cmd>lua vim.lsp.buf.type_definition()<CR>"},
                },
            },
        },
        inlay_hints = { enabled = false },
    },
-- opts = function(_, opts)
  -- require("lspconfig").clangd.setup({
  --   -- cmd = { "clangd", "--rename-file-limit=0", "--log=verbose" },
  --   cmd = {
  --       "clangd",
  --       "--background-index",
  --       "--clang-tidy",
  --       "--header-insertion=iwyu",
  --       "--completion-style=detailed",
  --       "--function-arg-placeholders",
  --       "--fallback-style=google",
  --       "--rename-file-limit=0",
  --       "--log=verbose"
  --     },
  -- })
  }
