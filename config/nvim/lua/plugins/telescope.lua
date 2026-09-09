return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules/",
          "%.git/",
          "dist/",
          "build/",
          "ios/",
          "android/",
          "%.agents/",
          "%.expo/",
        },
      },
    })
  end,
}
