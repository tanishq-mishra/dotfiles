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
			vim.keymap.set("n", "<leader>gp", ":Gitsigns prev_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
      vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', {})

		end,
	},
}
