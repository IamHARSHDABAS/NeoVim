local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true,
})

local dart_lsp = lsp.build_options('dartls', {})

require("flutter-tools").setup {
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "ErrorMsg",
    prefix = "",
    enabled = true
  },
  lsp = {
    color = {
      enabled = true,
      background = true,
      background_color = nil,
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    },
    capabilities = dart_lsp.capabilities,
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
      renameFilesWithClasses = "prompt",
      enableSnippets = true,
    }
  }
}

lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = true
})
