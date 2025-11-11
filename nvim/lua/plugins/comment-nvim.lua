return {
  {
    'numToStr/Comment.nvim',
    event = { 'BufNewFile', 'BufRead' },
    lazy = false,
    config = function()
      require('Comment').setup()
    end,
  }
}
