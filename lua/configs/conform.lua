local options = {
  formatters_by_ft = {
    css = { "prettier" },
    go = { "goimports", "gofmt" },
    html = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    python = { "ruff_organize_imports", "ruff_format" },
    rust = { "rustfmt" },
    sh = { "shfmt" },
    terraform = { "terraform_fmt" }, ["terraform-vars"] = { "terraform_fmt" },
    vue = { "prettier" },
    yaml = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
