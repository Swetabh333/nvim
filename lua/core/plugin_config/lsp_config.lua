--local lsp_zero = require('lsp-zero')
--
--lsp_zero.on_attach(function(client, bufnr)
--  -- see :help lsp-zero-keybindings
--  -- to learn the available actions
--  lsp_zero.default_keymaps({buffer = bufnr})
--end)
--
--require('mason').setup({})
--require('mason-lspconfig').setup({
--  ensure_installed = {'lua_ls', 'rust_analyzer', 'bashls', 'clangd', 'cssls', 'dockerls', 'eslint', 'html', 'jdtls', 'jsonls', 'pyright', 'tailwindcss', 'tsserver'},
--  handlers = {
--    lsp_zero.default_setup,
--  },
--})
local lsp_zero = require("lsp-zero")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Set up lsp-zero
lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- Set up Mason
mason.setup()

-- Configure Mason-lspconfig
mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"bashls",
		"clangd",
		"cssls",
		"dockerls",
		"eslint",
		"html",
		"jdtls",
		"jsonls",
		"pyright",
		"tailwindcss",
		"ts_ls", -- Changed from 'tsserver' to 'ts_ls'
		"ruff_lsp",
		"emmet_language_server",
	},
})

-- Set up handlers
mason_lspconfig.setup_handlers({
	function(server_name)
		-- Handle the tsserver name change
		if server_name == "tsserver" then
			server_name = "ts_ls"
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		lspconfig[server_name].setup({
			capabilities = capabilities,
			on_attach = lsp_zero.on_attach,
		})
	end,

	-- You can add specific handlers here if needed
	-- ['specific_server'] = function()
	--   -- Custom setup for specific server
	-- end,
})
