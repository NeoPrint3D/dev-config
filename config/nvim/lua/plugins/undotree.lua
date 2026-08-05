return {
  "mbbill/undotree",
  keys = {
    { "<leader>ut", "<cmd>UndotreeToggle<CR>", desc = "Toggle undotree" },
    { "<leader>uf", "<cmd>UndotreeFocus<CR>", desc = "Focus undotree" },
  },
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
