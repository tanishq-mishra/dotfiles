return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({
				on_attach = function(client, bufnr)
					client.server_capabilities.documentFormattingProvider = false
				end,
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})
			local function custom_perl_root_dir(fname)
				-- First, try standard root pattern
				local standard_root = lspconfig.util.root_pattern(".git", "p4-swarm")(fname)

				-- If standard root found, use it
				if standard_root then
					return standard_root
				end

				-- Custom logic for SF:: namespace
				local root = lspconfig.util.path.dirname(fname)
				print("root: " .. root)
				return root
			end

			--lspconfig.perlnavigator.setup({
			--  root_dir = custom_perl_root_dir,
			--  settings = {
			--    perlnavigator = {
			--      includePaths = { "src/binaries/sfwww/perl", "src/binaries/sfwww/perl/t" },
			--      perlPath = "perl",
			--      logging = true,
			--    },
			--  },
			--  capabilities = capabilities,
			--})
			lspconfig.perlpls.setup({
				settings = {
					perl = {
						perlInc = { "src/binaries/sfwww/perl/", "src/binaries/sfwww/perl/t/", "/Users/tanimish/Perforce/tanimish_7_8_MAIN/src/binaries/sfwww/perl/" },
						logging = true,
					},
					capabilities = capabilities,
				},
			})

			vim.diagnostic.config({
				virtual_text = false,
				open_float = true,
			})
			vim.o.updatetime = 250
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
				callback = function()
					vim.diagnostic.open_float(nil, { focus = false })
				end,
			})

			-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			-- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
