return {
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup()
		end,
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gk", ":Gitsigns prev_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gj", ":Gitsigns next_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
			vim.keymap.set("n", "<leader>gu", ":Gitsigns reset_hunk<CR>", {})
		end,
	},
}
