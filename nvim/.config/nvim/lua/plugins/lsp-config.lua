return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
    opts = {}
  }, {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "intelephense" }
      }
    end,
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    }
  }, {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    config = function()
      require("lspconfig").lua_ls.setup {}
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  }
}
