return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "php", "html", "javascript", "css", "scss", "json", "bash" },
      highlight = { enable = true },
      indent = { enable = false },
    })
  end
}
