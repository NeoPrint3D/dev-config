local plugins = {
  {
    "hrsh7th/cmp-cmdline",
    lazy = false,
    dependencies = {
      "nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local cmp = require "cmp"
      cmp.setup.cmdline("/", {
        sources = cmp.config.sources({
          { name = "cmdline" },
        }, {
          { name = "buffer" },
        }),
      })

      cmp.setup.cmdline(":", {
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup {
        groups = { -- table: default groups
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = {},
      }
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
}
return plugins
