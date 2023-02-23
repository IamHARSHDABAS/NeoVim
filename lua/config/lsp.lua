require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup {
	ensure_installed = { "jdtls", "lua_ls", "pyright" }
}

require("lspconfig").jdtls.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
