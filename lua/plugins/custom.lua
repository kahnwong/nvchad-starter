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
                "vim", "markdown", "markdown_inline",
                "html", "css",
                "dockerfile",
                "go",
                "hcl", "terraform",
                "nix",
                "python",
                --"sql",
            },
        },
    },
}

return plugins
