local plugins = {
  { "wakatime/vim-wakatime" , lazy = false },
  -- this opts will extend the default opts
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"html", "css", "bash"},
    },
  },
}

return plugins
