-- Name:         Grey
-- Description:  A low-contrast light theme for NeoVim
-- Author:       Yorick Peterse <yorick@yorickpeterse.com>
-- Maintainer:   Yorick Peterse <yorick@yorickpeterse.com>
-- Website:      https://gitlab.com/yorickpeterse/nvim-grey
-- License:      MPL 2.0

local o = vim.o
local g = vim.g
local api = vim.api

vim.cmd('hi clear')

if g.syntax_on == 1 then
  vim.cmd('syntax reset')
end

o.background = 'light'
g.colors_name = 'grey'

local background = '#f2f2f2'
local black = '#000000'
local blue = '#1e6fcc'
local green = '#216609'
local lgreen = '#dfeacc'
local lred = '#f2d3cd'
local red = '#cc3e28'
local grey = '#777777'
local dgrey = '#555555'
local lgrey1 = '#dddddd'
local lgrey2 = '#eaeaea'
local lgrey3 = '#aaaaaa'
local lgrey4 = '#eeeeee'
local lgrey5 = '#cccccc'
local yellow = '#bf8f00'
local lyellow1 = '#f9e595'
local lyellow2 = '#f9efc7'
local orange = '#a55000'
local purple = '#5c21a5'
local white = '#ffffff'
local cyan = '#158c86'

g.terminal_color_0 = black
g.terminal_color_1 = red
g.terminal_color_2 = green
g.terminal_color_3 = yellow
g.terminal_color_4 = blue
g.terminal_color_5 = purple
g.terminal_color_6 = cyan
g.terminal_color_7 = lgrey3

g.terminal_color_8 = dgrey
g.terminal_color_9 = red
g.terminal_color_10 = green
g.terminal_color_11 = yellow
g.terminal_color_12 = blue
g.terminal_color_13 = purple
g.terminal_color_14 = cyan
g.terminal_color_15 = lgrey3

local highlights = {
  -- This highlight group can be used when one wants to disable a highlight
  -- group using `winhl`
  Disabled = {},

  -- These highlight groups can be used for statuslines, for example when
  -- displaying ALE warnings and errors.
  BlackOnLightYellow = { fg = black, bg = lyellow1 },
  LightRedBackground = { bg = lred },
  WhiteOnBlue = { fg = white, bg = blue },
  WhiteOnOrange = { fg = white, bg = orange },
  WhiteOnRed = { fg = white, bg = red },
  WhiteOnYellow = { fg = white, bg = yellow },
  Yellow = { fg = yellow, bold = true },

  Bold = { fg = black, bold = true },
  Boolean = { link = 'Keyword' },
  Character = { link = 'String' },
  ColorColumn = { bg = lgrey4 },
  Comment = { fg = grey },
  Conceal = {},
  Constant = { fg = black },
  Cursor = { bg = black },
  -- This is to work around https://github.com/neovim/neovim/issues/9800.
  CursorLine = { ctermfg = 'black' },
  CursorLineNR = { fg = black, bold = true },
  Directory = { fg = purple },
  EndOfBuffer = { fg = background, bg = background },
  Error = { link = 'ErrorMsg' },
  ErrorMsg = { fg = red, bold = true },
  FoldColumn = { fg = lgrey1, bg = background },
  Folded = { link = 'Comment' },
  Identifier = { fg = black },
  IncSearch = { bg = lyellow1 },
  Include = { fg = black, bold = true },
  InstanceVariable = { fg = purple },
  Keyword = { fg = black, bold = true },
  Label = { link = 'Keyword' },
  LineNr = { fg = black },
  Macro = { fg = orange },
  MatchParen = { bold = true },
  MoreMsg = { fg = black },
  MsgSeparator = { fg = lgrey1 },
  NonText = { fg = lgrey3 },
  Normal = { fg = black, bg = background },
  NormalFloat = { fg = black, bg = background },
  Number = { fg = blue },
  Operator = { fg = black },
  Pmenu = { fg = black, bg = lgrey2 },
  PmenuSbar = { bg = lgrey2 },
  PmenuSel = { fg = black, bg = lgrey1, bold = true },
  PmenuThumb = { bg = lgrey1 },
  PreCondit = { link = 'Macro' },
  PreProc = { fg = black },
  Question = { fg = black },
  QuickFixLine = { bg = lgrey4, bold = true },
  Regexp = { fg = orange },
  Search = { bg = lyellow1 },
  SignColumn = { link = 'FoldColumn' },
  Special = { fg = black },
  SpecialKey = { link = 'Number' },
  SpellBad = { fg = red, bold = true, underline = true },
  SpellCap = { fg = purple, underline = true },
  SpellLocal = { fg = green, underline = true },
  SpellRare = { fg = purple, underline = true },
  Statement = { link = 'Keyword' },
  StatusLine = { fg = black, bg = background },
  StatusLineNC = { fg = black, bg = lgrey2 },
  StatusLineTab = { fg = black, bg = background, bold = true },

  -- Window bars are introduced in PR
  -- https://github.com/neovim/neovim/pull/18562. They act a bit like status
  -- lines, except they're drawn at the top of each window.
  WinBar = { fg = black, bold = true },
  WinBarFill = { fg = lgrey1 },

  StorageClass = { link = 'Keyword' },
  String = { fg = green },
  Symbol = { fg = orange },
  TabLine = { fg = dgrey, bg = lgrey1 },
  TabLineFill = { fg = black, bg = lgrey1 },
  TabLineSel = { fg = black, bg = background, bold = true },
  Title = { fg = black, bold = true },
  Todo = { fg = grey, bold = true },
  Type = { link = 'Constant' },
  Underlined = { underline = true },
  VertSplit = { fg = lgrey1 },
  Visual = { bg = lgrey1 },
  WarningMsg = { fg = yellow, bold = true },
  WildMenu = { link = 'PmenuSel' },

  -- ALE
  ALEError = { fg = red, bold = true },
  ALEErrorSign = { fg = red, bold = true },
  ALEWarning = { fg = yellow, bold = true },
  ALEWarningSign = { fg = yellow, bold = true },

  -- CSS
  cssClassName = { link = 'Keyword' },
  cssColor = { link = 'Number' },
  cssIdentifier = { link = 'Keyword' },
  cssImportant = { link = 'Keyword' },
  cssProp = { link = 'Identifier' },
  cssTagName = { link = 'Keyword' },

  -- Diffs
  DiffAdd = { bg = lgreen },
  DiffChange = {},
  DiffDelete = { fg = red },
  DiffText = { bg = lyellow2 },
  diffAdded = { link = 'DiffAdd' },
  diffChanged = { link = 'DiffChange' },
  diffFile = { fg = black, bold = true },
  diffLine = { fg = blue },
  diffRemoved = { link = 'DiffDelete' },

  -- dressing.nvim
  FloatTitle = { fg = black, bold = true },
  FloatBorder = { fg = grey },

  -- Dot/Graphviz
  dotKeyChar = { link = 'Operator' },

  -- diffview.nvim
  DiffviewCursorLine = { bg = lgrey4 },
  DiffviewDiffAddAsDelete = { bg = lred },
  DiffviewDiffDelete = { fg = lgrey5 },
  DiffviewFilePanelFileName = { fg = black },
  DiffviewFilePanelPath = { fg = purple },
  DiffviewFilePanelRootPath = { fg = purple },
  DiffviewFilePanelTitle = { fg = black, bold = true },

  -- Fugitive
  FugitiveblameHash = { fg = purple },
  FugitiveblameTime = { fg = blue },
  gitCommitOverflow = { link = 'ErrorMsg' },
  gitCommitSummary = { link = 'String' },

  -- HAML
  hamlClass = { fg = black },
  hamlDocType = { link = 'Comment' },
  hamlId = { fg = black },
  hamlTag = { fg = black, bold = true },

  -- hop.nvim
  HopNextKey = { fg = red, bold = true },
  HopNextKey1 = { fg = yellow },
  HopNextKey2 = { fg = yellow },
  HopUnmatched = {},

  -- HTML
  htmlArg = { link = 'Identifier' },
  htmlLink = { link = 'Directory' },
  htmlScriptTag = { link = 'htmlTag' },
  htmlSpecialTagName = { link = 'htmlTag' },
  htmlTag = { fg = black, bold = true },
  htmlTagName = { link = 'htmlTag' },

  -- Inko
  inkoCommentBold = { fg = grey, bold = true },
  inkoCommentInlineUrl = { link = 'Number' },
  inkoCommentItalic = { fg = grey, italic = true },
  inkoCommentTitle = { fg = grey, bold = true },
  inkoInstanceVariable = { link = 'InstanceVariable' },
  inkoKeywordArgument = { link = 'Regexp' },

  -- Java
  javaAnnotation = { link = 'Directory' },
  javaCommentTitle = { link = 'javaComment' },
  javaDocParam = { link = 'Todo' },
  javaDocTags = { link = 'Todo' },
  javaExternal = { link = 'Keyword' },
  javaStorageClass = { link = 'Keyword' },

  -- Javascript
  JavaScriptNumber = { link = 'Number' },
  javaScriptBraces = { link = 'Operator' },
  javaScriptFunction = { link = 'Keyword' },
  javaScriptIdentifier = { link = 'Keyword' },
  javaScriptMember = { link = 'Identifier' },

  -- JSON
  jsonKeyword = { link = 'String' },

  -- Lua
  luaFunction = { link = 'Keyword' },

  -- LSP
  DiagnosticUnderlineError = { underline = true, sp = red },
  DiagnosticUnderlineWarn = { underline = true, sp = yellow },
  LspDiagnosticsUnderlineError = { link = 'DiagnosticUnderlineError' },
  LspDiagnosticsUnderlineWarning = { link = 'DiagnosticUnderlineWarn' },

  -- Floating highlights are a bit too distracting, so they are disabled
  DiagnosticFloatingError = { fg = black, bg = background },
  DiagnosticFloatingHint = { fg = black, bg = background },
  DiagnosticFloatingInfo = { fg = black, bg = background },
  DiagnosticFloatingWarn = { fg = black, bg = background },

  DiagnosticError = { fg = red, bold = true },
  DiagnosticHint = { fg = grey, bold = true },
  DiagnosticInfo = { fg = blue, bold = true },
  DiagnosticWarn = { fg = yellow, bold = true },

  -- Make
  makeTarget = { link = 'Function' },

  -- Markdown
  markdownCode = { link = 'markdownCodeBlock' },
  markdownCodeBlock = { link = 'Comment' },
  markdownListMarker = { link = 'Keyword' },
  markdownOrderedListMarker = { link = 'Keyword' },

  -- netrw
  netrwClassify = { link = 'Identifier' },

  -- Perl
  perlPackageDecl = { link = 'Identifier' },
  perlStatementInclude = { link = 'Statement' },
  perlStatementPackage = { link = 'Statement' },
  podCmdText = { link = 'Todo' },
  podCommand = { link = 'Comment' },
  podVerbatimLine = { link = 'Todo' },

  -- Ruby
  rubyAttribute = { link = 'Identifier' },
  rubyClass = { link = 'Keyword' },
  rubyClassVariable = { link = 'rubyInstancevariable' },
  rubyConstant = { link = 'Constant' },
  rubyDefine = { link = 'Keyword' },
  rubyFunction = { link = 'Function' },
  rubyInstanceVariable = { link = 'InstanceVariable' },
  rubyMacro = { link = 'Identifier' },
  rubyModule = { link = 'rubyClass' },
  rubyRegexp = { link = 'Regexp' },
  rubyRegexpCharClass = { link = 'Regexp' },
  rubyRegexpDelimiter = { link = 'Regexp' },
  rubyRegexpQuantifier = { link = 'Regexp' },
  rubyRegexpSpecial = { link = 'Regexp' },
  rubyStringDelimiter = { link = 'String' },
  rubySymbol = { link = 'Symbol' },

  -- Rust
  rustCommentBlockDoc = { link = 'Comment' },
  rustCommentLineDoc = { link = 'Comment' },
  rustFuncCall = { link = 'Identifier' },
  rustModPath = { link = 'Identifier' },

  -- Python
  pythonOperator = { link = 'Keyword' },

  -- SASS
  sassClass = { link = 'cssClassName' },
  sassId = { link = 'cssIdentifier' },

  -- Shell
  shFunctionKey = { link = 'Keyword' },

  -- SQL
  sqlKeyword = { link = 'Keyword' },

  -- Typescript
  typescriptBraces = { link = 'Operator' },
  typescriptEndColons = { link = 'Operator' },
  typescriptExceptions = { link = 'Keyword' },
  typescriptFuncKeyword = { link = 'Keyword' },
  typescriptFunction = { link = 'Function' },
  typescriptIdentifier = { link = 'Identifier' },
  typescriptLogicSymbols = { link = 'Operator' },

  -- Telescope
  TelescopeBorder = { fg = grey },
  TelescopeMatching = { fg = yellow, bold = true },
  TelescopePromptPrefix = { fg = black, bold = true },
  TelescopeSelection = { bg = lgrey1, bold = true },
  TelescopeTitle = { fg = black, bold = true },

  -- Treesitter
  TSEmphasis = { italic = true },
  TSField = {},
  TSStringEscape = { fg = green, bold = true },
  TSStrong = { bold = true },
  TSURI = { fg = cyan, underline = true },
  TSUnderline = { underline = true },

  TSConstMacro = { link = 'Macro' },
  TSDanger = { link = 'Todo' },
  TSKeywordOperator = { link = 'Keyword' },
  TSNamespace = { link = 'Constant' },
  TSNote = { link = 'Todo' },
  TSProperty = { link = 'TSField' },
  TSStringRegex = { link = 'Regexp' },
  TSSymbol = { link = 'Symbol' },
  TSTypeBuiltin = { link = 'Keyword' },
  TSWarning = { link = 'Todo' },

  -- Ruby uses "TSLabel" for instance variables, for some reason. See
  -- https://github.com/tree-sitter/tree-sitter-ruby/issues/184 for more
  -- details.
  rubyTSLabel = { link = 'InstanceVariable' },

  -- TOML
  --
  -- tomlTSTypeBuiltin is used for section titles (e.g. `[dependencies]`), while
  -- tomlTSProperty is used for key-value pairs. These rules ensure the syntax
  -- is consistent with https://github.com/cespare/vim-toml.
  tomlTSProperty = { fg = black },
  tomlTSTypeBuiltin = { fg = black, bold = true },

  -- Vimscript
  VimCommentTitle = { link = 'Todo' },
  VimIsCommand = { link = 'Constant' },
  vimGroup = { link = 'Constant' },
  vimHiGroup = { link = 'Constant' },

  -- XML
  xmlAttrib = { link = 'Identifier' },
  xmlTag = { link = 'Identifier' },
  xmlTagName = { link = 'Identifier' },

  -- YAML
  yamlPlainScalar = { link = 'String' },

  -- YARD
  yardComment = { link = 'Comment' },
  yardType = { link = 'Todo' },
  yardTypeList = { link = 'Todo' },
}

for group, opts in pairs(highlights) do
  api.nvim_set_hl(0, group, opts)
end
