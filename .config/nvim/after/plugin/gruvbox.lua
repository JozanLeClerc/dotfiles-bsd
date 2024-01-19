require("gruvbox").setup({
  terminal_colors = false, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = false,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {
		["@punctuation.delimiter"] = { fg = "#928374" },
	},
  dim_inactive = false,
  transparent_mode = true,
})
-- vim.cmd("colorscheme gruvbox")
