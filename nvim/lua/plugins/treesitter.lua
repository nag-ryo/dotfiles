return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufNewFile', 'BufRead' },
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "typescript",
      },
      highlight = {
        enable = true,
        disable = { "ini" }
      },
      autotag = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
          }
        },
      }
    }
  end
}
