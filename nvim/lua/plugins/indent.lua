return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		-- Set the highlight for the active indent guide
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#636363", nocombine = true })
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#303030", nocombine = true })
		require("ibl").setup({
			indent = {
				char = "▏",
			},
			scope = {
				enabled = true,
				show_end = false,
				show_start = false,
			},
		})
	end,
}
