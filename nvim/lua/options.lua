vim.opt.number = true         -- 行番号を表示
vim.opt.autoindent = true     -- 改行時に自動でインデント
vim.opt.tabstop = 2           -- タブを何文字の空白に変換するか
vim.opt.shiftwidth = 2        -- 自動インデント時に入力する空白の数
vim.opt.expandtab = true      -- タブ入力を空白に変換
vim.opt.splitright = true     -- 画面を縦分割する際に右に開く
vim.opt.clipboard = 'unnamed' -- yankした文字列をクリップボードにコピー
vim.opt.hls = true            -- 検索した文字をハイライトする
vim.opt.wrap = true           -- 折返し
vim.opt.ignorecase = true     -- 検索文字列が小文字の場合はcaseを区別しない
vim.opt.smartcase = true      -- 検索時に大文字を含んでいたらcaseを区別する
vim.opt.scrolloff = 5         -- スクロールしたとき 常に下に表示するバッファ行の数
vim.opt.foldmethod = 'indent' -- 折りたたみ設定
vim.opt.foldlevel = 999       -- ファイルを開いたときのデフォルトの折りたたみレベル
--vim.opt.foldcolumn = "2"      -- 左端に折りたたみ状態を表示する領域を追加する
-- 最後に開いていた行を開く
vim.api.nvim_create_augroup('init', {})

--vim.api.nvim_create_autocmd('Gitsigns', {
--  group = 'init',
--  command = 'toggle_current_line_blame',
--})
vim.cmd [[colorscheme tokyonight-night]]

vim.cmd([[
  augroup vimrcEx
    au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
  augroup END
]])

vim.g.mapleader = ' ' -- リーダーキーの設定

