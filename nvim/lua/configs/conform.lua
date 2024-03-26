local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd", "prettier" },
    html = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    vue = { "prettierd", "prettier" },
    svelte = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    markdown = { "prettierd", "prettier" },
    yaml = { "prettierd", "prettier" },
  },
  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
