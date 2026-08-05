return {
  "DNLHC/glance.nvim",
  cmd = "Glance",
  keys = {
    { "gD", "<cmd>Glance definitions<CR>", desc = "Glance definitions" },
    { "gR", "<cmd>Glance references<CR>", desc = "Glance references" },
    { "gY", "<cmd>Glance type_definitions<CR>", desc = "Glance type definitions" },
    { "gM", "<cmd>Glance implementations<CR>", desc = "Glance implementations" },
  },
  opts = {
    height = 18,
    zindex = 45,
    detached = function(winid)
      return vim.api.nvim_win_get_width(winid) < 100
    end,
    theme = {
      enable = true,
      mode = "auto",
    },
    border = {
      enable = false,
      top_char = "―",
      bottom_char = "―",
    },
    list = {
      position = "right",
      width = 0.33,
    },
  },
}
