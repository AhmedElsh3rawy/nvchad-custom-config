local plugins = {
  -- formatting & linting
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  -- lsp config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  -- LSPs
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "stylua",
        "prettier",
        "typescript-language-server",
        "tailwindcss-language-server",
        "clangd",
        "clang-format",
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "html-lsp",
        "css-lsp",
        "jdtls",
        "omnisharp",
        "pyright",
        "mypy",
        "ruff",
        "black",
        "rust-analyzer",
      },
    },
  },
  -- tag completion
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "go",
        "rust",
        "cpp",
        "c_sharp",
        "java",
        "python",
        "c",
        "css",
        "html",
      }
      return opts
    end,
  },
  -- formatting for rust
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
return plugins
