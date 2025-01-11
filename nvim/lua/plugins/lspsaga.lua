return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({
      ui = {
        code_action = ""
      }
         })

		local opts = { noremap = true, silent = true }
    
		vim.keymap.set("n", "<leader>gd", ":Lspsaga goto_definition<CR>" , opts)
		vim.keymap.set("n", "<leader>gr", ":Lspsaga finder<CR>" , opts)
    vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>" , opts)
    vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>" ,opts)
	end,
}
