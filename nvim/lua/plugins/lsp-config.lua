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
        capabilities = capabilities
      })
      lspconfig.perlnavigator.setup({
        capabilities = capabilities
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
