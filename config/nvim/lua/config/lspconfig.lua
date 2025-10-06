require("lspconfig").tailwindcss.setup({
  filetypes = { "html", "css", "typescriptreact", "javascriptreact", "typescript", "astro" },
})

require("lspconfig").emmet_ls.setup({
  filetypes = { "html", "css", "typescriptreact", "javascriptreact", "typescript", "astro" },
})
