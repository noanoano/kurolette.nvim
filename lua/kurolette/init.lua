-- Kurolette Neovim Colorscheme - Gothic × KAWAII 🖤💜

local M = {}

-- デフォルト設定
local default_config = {
  transparent = false,        -- 透明背景
  italic_comments = true,     -- コメントをイタリック
  bold_keywords = true,       -- キーワードをボールド
  override_terminal = true,   -- ターミナルカラーを上書き
}

-- 設定を保存
M.config = {}

-- セットアップ関数
function M.setup(opts)
  opts = opts or {}
  M.config = vim.tbl_deep_extend("force", default_config, opts)
end

-- カラースキームを読み込み
function M.load()
  -- 設定が初期化されていない場合はデフォルトを使用
  if vim.tbl_isempty(M.config) then
    M.config = default_config
  end
  
  require("kurolette.highlights").load(M.config)
end

-- 設定取得
function M.get_config()
  return M.config
end

return M

