return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "cssls",
        "html",
        "intelephense",
        "marksman",
        "jsonls",
        "jedi_language_server",
        "pyright",
        "lua_ls",
        "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "black",
        "isort",
        "prettierd",
        "shfmt",
        "shellcheck",
        "beautysh",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "bash",
        "js",
        "php",
        "python",
      },
    },
  },
}
