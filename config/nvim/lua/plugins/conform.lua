-- ~/.config/nvim/lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>cf", -- You can change this to your preferred keybinding
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "", -- Apply in all modes
      desc = "[F]ormat Buffer", -- Description for keymap search
    },
  },
  -- You can add formatter configurations here as well
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" },
      lua = { "stylua" },
      typescript = { "prettierd", "prettier" },
      typescriptReact = { "prettierd", "prettier" },
      javascript = { "prettierd", "prettier" },
      javascriptReact = { "prettierd", "prettier" },
      astro = { "prettierd", "prettier" },
    },
  },
}
