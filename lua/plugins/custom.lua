local plugins = {
    { "wakatime/vim-wakatime", lazy = false },
    { "nathangrigg/vim-beancount", lazy = true },
    -- this opts will extend the default opts
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash", "fish",
                "csv", "json", "yaml",
                "dockerfile",
                "go",
                "hcl", "terraform",
                "html", "css",
                "javascript", "typescript", "vue",
                "nix",
                "python",
                "rust",
                "vim", "markdown", "markdown_inline",
                --"sql",
            },
        },
    },
}

return plugins
