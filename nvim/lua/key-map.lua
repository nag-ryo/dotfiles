------------
-- カーソル移動
-------------
vim.keymap.set("n", "md", "<Cmd>move .+1<CR>==")
vim.keymap.set("x", "md", ":move '>+1<CR>gv=gv")
vim.keymap.set("n", "mu", "<Cmd>move .-2<CR>==")
vim.keymap.set("x", "mu", ":move '<-2<CR>gv=gv")

--------------
-- terminal
--------------
vim.keymap.set('n', 'tt', '<cmd>terminal<cr>', { silent = true })
vim.keymap.set('n', 'tx', '<cmd>belowright new<cr><cmd>terminal<cr>', { silent = true })

------------------
-- telescope.nvim
--  FuzyFinder
-------------------
vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { silent = true }) -- ファイル検索
vim.keymap.set('n', '<C-f>', '<cmd>Telescope freqency<cr>', { silent = true })   -- 頻出ファイル検索
vim.keymap.set('n', '<C-g>', '<cmd>Telescope live_grep<cr>', { silent = true })  -- 全体文字列検索

-------------------------------
-- hop.nvim
--  画面内カーソル移動
-------------------------------
vim.keymap.set('n', '<C-h>', '<cmd>HopWord<cr>', { silent = true }) -- 単語ラベル移動

-- formatting
vim.keymap.set("n", "<leader>fta", ":Format<cr>", { silent = true, desc = "[F]orma[T] [A]ll - formats entire buffer" })
vim.keymap.set(
    "n",
    "<leader>ftm",
    ":FormatModifications<cr>",
    { silent = true, desc = "[F]orma[T] [M]odifications - formats modifications in this buffer" }
)

------------------------
-- barbar.nvim
--  タブ設定
------------------------
-- Move to previous/next
vim.keymap.set('n', '<leader>,', '<cmd>BufferPrevious<cr>', { silent = true })
vim.keymap.set('n', '<leader>.', '<Cmd>BufferNext<CR>', { silent = true })
-- Re-order to previous/next
vim.keymap.set('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', { silent = true })
vim.keymap.set('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', { silent = true })
-- Close buffer
vim.keymap.set('n', '<leader>q', '<Cmd>BufferClose<CR>', { silent = true })
vim.keymap.set('n', '<leader>fq', '<Cmd>BufferClose!<CR>', { silent = true })
vim.keymap.set('n', '<leader>c', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', { silent = true })

----------------------
-- coc.nvim
----------------------
-- シンボルリネーム
vim.keymap.set('n', 'g<F2>', '<Plug>(coc-rename)', { silent = true })

local keyset = vim.keymap.set
-- navigate diagnostic
keyset('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
keyset('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })

-- goto definition
keyset('n', 'gd', '<Plug>(coc-definition)', { silent = true })
keyset('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
keyset('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
keyset('n', 'gr', '<Plug>(coc-references)', { silent = true })
keyset('n', 'ga', '<Plug>(coc-codeaction-cursor)', { silent = true })
