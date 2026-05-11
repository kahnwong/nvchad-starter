require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy",
      },
    },
  },
})

vim.lsp.config("gopls", {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      lineLength = 120,
    },
  },
})

vim.lsp.config("bashls", {
  settings = {
    bashIde = {
      shellcheckPath = "shellcheck",
    },
  },
})

vim.lsp.config("yamlls", {
  settings = {
    yaml = {
      schemaStore = {
        enable = true,
      },
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*.{yml,yaml}",
      },
    },
  },
})

local servers = {
  "basedpyright",
  "bashls",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "gh_actions_ls",
  "golangci_lint_ls",
  "gopls",
  "html",
  "ruff",
  "rust_analyzer",
  "terraformls",
  "vue_ls",
  "yamlls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
