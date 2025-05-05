require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "eslint", "pyright", "lua_ls" }
vim.lsp.enable(servers)
