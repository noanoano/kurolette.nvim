-- Kurolette Color Palette

local M = {}

-- ベースカラーパレット
M.base_colors = {
  -- 基本色
  bg = "#211816",              -- ダークブラウン
  fg = "#F0EFFF",              -- 白に近い薄い紫
  accent = "#9A73F3",          -- メインパープル
  border = "#6A4C93",          -- 深い紫
  
  -- Purple Family (Main Theme)
  purple_bright = "#E879F9",   -- より明るいピンクパープル
  purple_light = "#B19CD9",    -- もう少し濃いラベンダー
  purple_mid = "#9370DB",      -- 中間ミディアムパープル
  purple_dark = "#6B46C1",     -- 濃いパープル
  purple_deep = "#6A4C93",     -- 深いパープル
  purple_neon = "#DA70D6",     -- ネオンオーキッド
  purple_soft = "#B19CD9",     -- ソフトパープル
  purple_royal = "#7C3AED",    -- ロイヤルパープル
  
  -- Pink Family
  pink_bright = "#EA76DD",     -- 明るいピンク
  pink_light = "#E879F9",      -- パープル寄りピンク
  pink_soft = "#F0ABFC",       -- ソフトピンクパープル
  pink_hot = "#C026D3",        -- ホットピンクパープル
  
  -- Gothic Elements
  black = "#000000",           -- 純黒
  gray_dark = "#2F2F2F",       -- ダークグレー
  gray_mid = "#8B5CF6",        -- 紫がかったグレー
  silver = "#A855F7",          -- 紫がかったシルバー
  
  -- Accent Colors
  blue_light = "#8B5FBD",      -- 紫寄りブルー
  green_soft = "#A855F7",      -- 紫に変更
  yellow_cream = "#DDD6FE",    -- 薄い紫クリーム
  red_soft = "#E879F9",        -- 紫ピンク
  
  -- UI要素
  bg_sidebar = "#1A1414",      -- サイドバー
  bg_statusline = "#4B0082",   -- 深い紫ステータスライン
  bg_tab_active = "#9A73F3",   -- アクティブタブ
  bg_tab_inactive = "#2A201F", -- 非アクティブタブ
  bg_cursor_line = "#2F1B3D",  -- 紫がかったカーソル行
  bg_hover = "#3B2F47",        -- 紫ホバー
  bg_popup = "#2A1F3A",        -- 紫ポップアップ
  
  -- テキスト色
  fg_line_nr = "#8B5CF6",      -- 紫の行番号
  fg_line_nr_current = "#DA70D6", -- ネオンパープル現在行
  fg_dim = "#B19CD9",          -- 薄い紫テキスト
  
  -- ステータス色
  error = "#E879F9",           -- 紫ピンクエラー
  warning = "#C084FC",         -- ソフトパープル警告
  info = "#8B5FBD",            -- 紫寄りブルー情報
  success = "#A855F7",         -- 紫成功
  hint = "#F0ABFC",            -- ソフトピンクパープルヒント
  
  -- 特殊色
  comment = "#6B6B6B",         -- 地味なグレーコメント
  selection = "#9A73F350",     -- 選択範囲 (透明度付き)
  search = "#DA70D660",        -- 紫検索ハイライト
}

-- カラーパレット取得
function M.get_colors()
  local colors = vim.deepcopy(M.base_colors)
  return colors
end

-- ターミナルカラー (ANSI)
M.terminal_colors = {
  terminal_color_0 = "#211816",   -- black
  terminal_color_1 = "#E879F9",   -- red
  terminal_color_2 = "#A855F7",   -- green
  terminal_color_3 = "#DDD6FE",   -- yellow
  terminal_color_4 = "#8B5FBD",   -- blue
  terminal_color_5 = "#DA70D6",   -- magenta
  terminal_color_6 = "#B19CD9",   -- cyan
  terminal_color_7 = "#F0EFFF",   -- white
  terminal_color_8 = "#6B6B6B",   -- bright black
  terminal_color_9 = "#EA76DD",   -- bright red
  terminal_color_10 = "#C084FC",  -- bright green
  terminal_color_11 = "#E879F9",  -- bright yellow
  terminal_color_12 = "#9370DB",  -- bright blue
  terminal_color_13 = "#E879F9",  -- bright magenta
  terminal_color_14 = "#F0ABFC",  -- bright cyan
  terminal_color_15 = "#FFFFFF",  -- bright white
}

return M

