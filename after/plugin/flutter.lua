require("flutter-tools").setup {
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "ErrorMsg",
    prefix = "=>",
    enabled = true
  },
  outline = {
    open_cmd = "30vnew",
    auto_open = true
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
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
      renameFilesWithClasses = "prompt",
      enableSnippets = true,
    }
  }
}
