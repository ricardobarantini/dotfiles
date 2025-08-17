return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  opts = {
    flavour = "frappe",
    transparent_background = false,
    integrations = {
      cmp = true,
      gitsigns = true,
      harpoon = true,
      leap = true,
      lsp_trouble = true,
      mason = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "NONE" },
      neotree = true,
      noice = true,
      notify = true,
      telescope = { enabled = true },
      treesitter = true,
      which_key = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin-frappe")
  end,
}
