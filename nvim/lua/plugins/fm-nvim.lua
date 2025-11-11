return {
  "is0n/fm-nvim",
  keys = {
    { '<C-l>', ':Lazygit<CR>', silent = true },
  },
  config = function()
    require('fm-nvim').setup {
      ui = {
        float = {
          height = 0.99,
          width = 0.99,
        }
      },
    }
  end
}
