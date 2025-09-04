-- lua/kurolette/highlights.lua
-- Kurolette Highlight Definitions

local colors_module = require("kurolette.colors")

local M = {}

-- ハイライト設定関数
local function set_highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- メインの読み込み関数
function M.load(config)
  config = config or {}
  local colors = colors_module.get_colors(config.style)
  
  -- カラースキームリセット
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.background = "dark"
  vim.g.colors_name = "kurolette"
  
  -- 透明背景オプション
  local bg = config.transparent and "NONE" or colors.bg
  local bg_sidebar = config.transparent and "NONE" or colors.bg_sidebar
  local bg_statusline = config.transparent and "NONE" or colors.bg_statusline
  
  -- エディタの基本ハイライト
  set_highlight("Normal", { fg = colors.fg, bg = bg })
  set_highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_popup })
  set_highlight("CursorLine", { bg = colors.bg_cursor_line })
  set_highlight("CursorColumn", { bg = colors.bg_cursor_line })
  set_highlight("LineNr", { fg = colors.fg_line_nr })
  set_highlight("CursorLineNr", { fg = colors.fg_line_nr_current, bold = true })
  set_highlight("SignColumn", { bg = bg })
  set_highlight("Folded", { fg = colors.comment, bg = colors.bg_hover, italic = config.italic_comments })
  
  -- 選択とビジュアルモード
  set_highlight("Visual", { bg = colors.purple_neon, fg = colors.black })
  set_highlight("VisualNOS", { bg = colors.purple_bright, fg = colors.black })
  set_highlight("Search", { bg = colors.purple_mid, fg = colors.fg })           -- 通常の検索（紫背景、白文字）
  set_highlight("IncSearch", { bg = colors.pink_hot, fg = colors.black })       -- 現在の検索（ピンク背景、黒文字）
  set_highlight("CurSearch", { bg = colors.pink_hot, fg = colors.black, bold = true }) -- 現在の検索強調
  
  -- ステータスライン
  set_highlight("StatusLine", { fg = colors.fg, bg = bg_statusline, bold = true })
  set_highlight("StatusLineNC", { fg = colors.gray_mid, bg = bg_statusline })
  
  -- タブライン
  set_highlight("TabLine", { fg = colors.fg_dim, bg = colors.bg_tab_inactive })
  set_highlight("TabLineFill", { bg = bg_statusline })
  set_highlight("TabLineSel", { fg = colors.black, bg = colors.bg_tab_active, bold = true })
  
  -- ポップアップメニュー
  set_highlight("Pmenu", { fg = colors.fg, bg = colors.bg_popup })
  set_highlight("PmenuSel", { fg = colors.black, bg = colors.purple_neon, bold = true })
  set_highlight("PmenuSbar", { bg = bg_sidebar })
  set_highlight("PmenuThumb", { bg = colors.purple_royal })
  
  -- 診断（LSP）
  set_highlight("DiagnosticError", { fg = colors.error })
  set_highlight("DiagnosticWarn", { fg = colors.warning })
  set_highlight("DiagnosticInfo", { fg = colors.info })
  set_highlight("DiagnosticHint", { fg = colors.hint })
  set_highlight("DiagnosticOk", { fg = colors.success })
  
  -- シンタックスハイライト
  local comment_style = { fg = colors.comment }
  if config.italic_comments then
    comment_style.italic = true
  end
  set_highlight("Comment", comment_style)
  
  local keyword_style = { fg = colors.purple_royal }
  if config.bold_keywords then
    keyword_style.bold = true
  end
  set_highlight("Keyword", keyword_style)
  
  set_highlight("Statement", { fg = colors.purple_mid })
  set_highlight("Conditional", vim.tbl_extend("force", { fg = colors.purple_dark }, config.bold_keywords and { bold = true } or {}))
  set_highlight("Repeat", { fg = colors.purple_royal })
  set_highlight("Label", { fg = colors.purple_bright })
  set_highlight("Operator", { fg = colors.purple_soft })
  set_highlight("Exception", vim.tbl_extend("force", { fg = colors.purple_royal }, config.bold_keywords and { bold = true } or {}))
  
  -- リテラル
  set_highlight("String", { fg = colors.pink_light, italic = true })
  set_highlight("Character", { fg = colors.pink_soft })
  set_highlight("Number", { fg = colors.purple_neon })
  set_highlight("Float", { fg = colors.purple_neon })
  set_highlight("Boolean", { fg = colors.purple_bright, bold = true })
  set_highlight("Constant", { fg = colors.yellow_cream })
  
  -- 識別子
  set_highlight("Identifier", { fg = colors.fg })
  set_highlight("Function", { fg = colors.purple_bright, bold = true })
  
  -- 前処理
  set_highlight("PreProc", { fg = colors.purple_royal, bold = true })
  set_highlight("Include", { fg = colors.purple_royal })
  set_highlight("Define", { fg = colors.purple_bright })
  set_highlight("Macro", { fg = colors.purple_mid })
  set_highlight("PreCondit", { fg = colors.purple_dark })
  
  -- 型
  set_highlight("Type", { fg = colors.purple_soft, bold = true })
  set_highlight("StorageClass", { fg = colors.purple_light })
  set_highlight("Structure", { fg = colors.purple_bright })
  set_highlight("Typedef", { fg = colors.purple_royal })
  
  -- 特殊文字
  set_highlight("Special", { fg = colors.purple_neon })
  set_highlight("SpecialChar", { fg = colors.pink_hot })
  set_highlight("Tag", { fg = colors.purple_mid })
  set_highlight("Delimiter", { fg = colors.purple_soft })
  set_highlight("SpecialComment", { fg = colors.pink_soft, italic = true })
  set_highlight("Debug", { fg = colors.purple_royal })
  
  -- エラー
  set_highlight("Error", { fg = colors.error, bold = true })
  set_highlight("ErrorMsg", { fg = colors.error, bold = true })
  set_highlight("WarningMsg", { fg = colors.warning })
  
  -- Git
  set_highlight("GitGutterAdd", { fg = colors.purple_soft })
  set_highlight("GitGutterChange", { fg = colors.purple_bright })
  set_highlight("GitGutterDelete", { fg = colors.error })
  set_highlight("GitSignsAdd", { fg = colors.purple_soft })
  set_highlight("GitSignsChange", { fg = colors.purple_bright })
  set_highlight("GitSignsDelete", { fg = colors.error })
  
  -- Telescope
  set_highlight("TelescopeNormal", { fg = colors.fg, bg = colors.bg_popup })
  set_highlight("TelescopeBorder", { fg = colors.purple_royal, bg = colors.bg_popup })
  set_highlight("TelescopeSelection", { fg = colors.black, bg = colors.purple_neon, bold = true })
  set_highlight("TelescopePromptNormal", { fg = colors.fg, bg = bg_sidebar })
  set_highlight("TelescopePromptBorder", { fg = colors.purple_neon, bg = bg_sidebar })
  
  -- NvimTree
  set_highlight("NvimTreeNormal", { fg = colors.fg, bg = bg_sidebar })
  set_highlight("NvimTreeFolderIcon", { fg = colors.purple_bright })
  set_highlight("NvimTreeFolderName", { fg = colors.purple_light })
  set_highlight("NvimTreeOpenedFolderName", { fg = colors.purple_neon, bold = true })
  set_highlight("NvimTreeFileIcon", { fg = colors.purple_soft })
  set_highlight("NvimTreeSpecialFile", { fg = colors.pink_hot, bold = true })
  set_highlight("NvimTreeGitDirty", { fg = colors.purple_mid })
  set_highlight("NvimTreeGitNew", { fg = colors.purple_soft })
  set_highlight("NvimTreeGitDeleted", { fg = colors.error })
  
  -- Tree-sitter
  set_highlight("@keyword", { fg = colors.purple_royal, bold = config.bold_keywords })
  set_highlight("@keyword.return", { fg = colors.purple_royal, bold = config.bold_keywords })
  set_highlight("@keyword.function", { fg = colors.purple_mid, bold = config.bold_keywords })
  set_highlight("@string", { fg = colors.pink_light, italic = true })
  set_highlight("@string.escape", { fg = colors.purple_neon })
  set_highlight("@number", { fg = colors.purple_neon })
  set_highlight("@boolean", { fg = colors.purple_bright, bold = true })
  set_highlight("@function", { fg = colors.purple_bright, bold = true })
  set_highlight("@function.call", { fg = colors.purple_light })
  set_highlight("@variable", { fg = colors.fg })
  set_highlight("@variable.builtin", { fg = colors.purple_soft })
  set_highlight("@type", { fg = colors.purple_soft, bold = true })
  set_highlight("@type.builtin", { fg = colors.purple_royal })
  set_highlight("@comment", { fg = colors.comment, italic = config.italic_comments })
  set_highlight("@punctuation", { fg = colors.purple_soft })
  set_highlight("@punctuation.bracket", { fg = colors.gray_mid })
  set_highlight("@operator", { fg = colors.purple_soft })
  
  -- 追加のTree-sitter
  set_highlight("@constant", { fg = colors.yellow_cream })
  set_highlight("@constant.builtin", { fg = colors.purple_neon, bold = true })
  set_highlight("@property", { fg = colors.purple_light })
  set_highlight("@parameter", { fg = colors.purple_soft, italic = true })
  set_highlight("@field", { fg = colors.purple_light })
  set_highlight("@namespace", { fg = colors.purple_royal })
  set_highlight("@label", { fg = colors.purple_bright })
  set_highlight("@tag", { fg = colors.purple_mid })
  set_highlight("@tag.attribute", { fg = colors.pink_light })
  set_highlight("@constructor", { fg = colors.purple_royal, bold = true })
  
  -- ターミナルカラー設定
  if config.override_terminal then
    for color, value in pairs(colors_module.terminal_colors) do
      vim.g[color] = value
    end
  end
end

return M
