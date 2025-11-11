return {
  {
    'neoclide/coc.nvim',
    event = { 'BufNewFile', 'BufRead' },
    keys = {
      { 'gh', ':call CocActionAsync(\'doHover\')<CR>', silent = true },
    }
  }
}
