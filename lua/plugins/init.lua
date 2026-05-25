return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufWritePost", "InsertLeave" },
    config = function()
      require "configs.lint"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "actionlint",
        "basedpyright",
        "bash-language-server",
--         "css-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server",
--         "eslint_d",
        "gh-actions-language-server",
--         "goimports",
--         "golangci-lint",
--         "golangci-lint-langserver",
--         "gopls",
        "hadolint",
        "html-lsp",
        "htmlhint",
        "markdownlint-cli2",
        "prettier",
        "ruff",
--         "rust-analyzer",
        "shellcheck",
        "shfmt",
--         "stylelint",
        "terraform-ls",
        "tflint",
--         "vue-language-server",
        "yaml-language-server",
      },
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
