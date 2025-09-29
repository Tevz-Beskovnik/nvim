local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

vim.lsp.config("clangd",{
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml" },
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
		},
	},
})

vim.lsp.config("pyright", {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes =  {"python"},
})

vim.lsp.config("ts_ls", {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = true,
        }
    }
})

vim.lsp.config("emmet_ls", {
    -- on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        html = {
            options = {
                ["bem.embed"] = true,
            },
        },
    }
})
