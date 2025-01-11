return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "warmer",
      term_colors = true,
      code_style = {
        comments = "italic",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none",
      },

      -- Lualine options --
      lualine = {
        transparent = true, -- lualine center bar transparency
      },
    })
    require("onedark").load()
  end,
}

--return {
--  "nyoom-engineering/oxocarbon.nvim",
--  config = function()
--    vim.opt.background = "dark" -- set this to dark or light
--    vim.cmd("colorscheme oxocarbon")
--  end,
--}

--return {
--	"rebelot/kanagawa.nvim",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		require("kanagawa").setup({
--			compile = false, -- enable compiling the colorscheme
--			undercurl = true, -- enable undercurls
--			commentStyle = { italic = true },
--			functionStyle = {},
--			keywordStyle = { italic = true },
--			statementStyle = { bold = true },
--			typeStyle = {},
--			transparent = false, -- do not set background color
--			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--			terminalColors = true, -- define vim.g.terminal_color_{0,17}
--			colors = { -- add/modify theme and palette colors
--				palette = {},
--				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--			},
--			theme = "dragon", -- Load "wave" theme when 'background' option is not set
--			background = { -- map the value of 'background' option to a theme
--				dark = "dragon", -- try "dragon" !
--				light = "lotus",
--			},
--		})
--    vim.cmd("colorscheme kanagawa")
--	end,
--}
