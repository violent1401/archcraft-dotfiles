return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "windwp/nvim-ts-autotag", "JoosepAlviste/nvim-ts-context-commentstring" },
  event = "User AstroFile",
  cmd = {
    "TSBufDisable",
    "TSBufEnable",
    "TSBufToggle",
    "TSDisable",
    "TSEnable",
    "TSToggle",
    "TSInstall",
    "TSInstallInfo",
    "TSInstallSync",
    "TSModuleInfo",
    "TSUninstall",
    "TSUpdate",
    "TSUpdateSync",
  },
  build = ":TSUpdate",
  opts = {
    ensure_installed = { 
      "python",
      "css",
      "scss",
      "html",
      "htmldjango",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "yaml",
      "sql",
      "ruby",
      "rasi",
      "json",
      "php",
      "dockerfile",
      "bash",
    },
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    context_commentstring = { enable = true, enable_autocmd = false },
  },
  config = require "plugins.configs.nvim-treesitter",
}
