return {
	{ "smartpde/telescope-recent-files" },
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						file_ignore_patterns = { "node_modules", ".git", ".venv" },
						hidden = true,
					},
					live_grep = {
						file_ignore_patterns = { "node_modules", ".git", ".venv", ".lock" },
						additional_args = function(_)
							return { "--hidden" }
						end,
					},
					recent_files = {
						hidden = true,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					recent_files = {
						only_cwd = true,
					},
				},
			})
			require("telescope").load_extension("recent_files")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.api.nvim_set_keymap(
				"n",
				"<Leader><Leader>",
				[[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
				{ noremap = true, silent = true }
			)
			-- vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
