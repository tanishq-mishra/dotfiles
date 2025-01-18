return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({
			symbol_in_winbar = {
				enable = true,
				folder_level = 0,
			},
			ui = {
				code_action = "",
			},
		})

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>gd", ":Lspsaga goto_definition<CR>", opts)
		vim.keymap.set("n", "<leader>gr", ":Lspsaga finder<CR>", opts)
		vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>", opts)
		vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>", opts)
		vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>", opts)
		vim.keymap.set("n", "<leader>dj", ":Lspsaga diagnostic_jump_next<CR>", opts)
		vim.keymap.set("n", "<leader>dk", ":Lspsaga diagnostic_jump_prev<CR>", opts)
	end,
}
