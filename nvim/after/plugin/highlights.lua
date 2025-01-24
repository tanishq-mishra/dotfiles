vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#db4b4b" }) -- Error with red underline
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#e0af68" })  -- Warning with yellow underline
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#0db9d7" })  -- Info with blue underline
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#10b981" })  -- Hint with green underline
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#151515", fg = "#E8E8D3" })
vim.api.nvim_set_hl(0, "SagaNormal", { link = "NormalFloat" })
