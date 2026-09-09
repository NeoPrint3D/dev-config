return {
  "sudo-tee/opencode.nvim",
  event = "VeryLazy",
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "opencode_output",
      callback = function(args)
        vim.opt_local.complete = "."
      end,
    })
    require("opencode").setup({
      keymap = {
        input_window = {
          ["<cr>"] = { "submit_input_prompt", mode = { "n", "i" }, desc = "Submit prompt" },
          ["<S-cr>"] = {
            function()
              vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, false, true), "n", false)
            end,
            mode = { "i" },
            desc = "New line",
          },
        },
      },
    })
  end,
  dependencies = {
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
    },
    "saghen/blink.cmp",
    "folke/snacks.nvim",
  },
}
