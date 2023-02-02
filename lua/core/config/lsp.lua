require("mason").setup{}

require("mason-lspconfig").setup {
	ensure_installed = { "jdtls", "sumneko_lua" },
}

require('lspconfig').jdtls.setup{}
require('lspconfig').sumneko_lua.setup{}
