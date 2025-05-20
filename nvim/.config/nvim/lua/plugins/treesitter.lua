return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "lua", "php", "html", "javascript", "css", "scss", "json", "bash", "blade", "dockerfile", "markdown", "vue", "yaml", "sql" },
        highlight = { enable = true },
        indent = { enable = false },
        autotag = { enable = true },
      })
    end
  }
}
