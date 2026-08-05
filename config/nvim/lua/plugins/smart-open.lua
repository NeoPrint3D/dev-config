return {
  "danielfalk/smart-open.nvim",
  branch = "0.2.x",
  dependencies = {
    "kkharji/sqlite.lua",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        local ok, telescope = pcall(require, "telescope")
        if ok then
          telescope.load_extension("smart_open")
        end
      end,
    })
  end,
}
