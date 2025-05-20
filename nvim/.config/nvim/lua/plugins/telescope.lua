return {
  "nvim-telescope/telescope.nvim", tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require('telescope').setup {
      defaults = {
        file_ignore_patterns = { "node_modules", "vendor" }
      },
      pickers = {
        find_files = {
          hidden = true
        },
      },
    }
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
  end
}
