return {
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      completion = {
        menu = {
          auto_show = function(ctx)
            if vim.bo.filetype == "opencode" then
              -- Only show the menu window if triggered by @, ~, or !
              return ctx.trigger.kind == "trigger_character"
            end
            return true
          end,
        },
        ghost_text = {
          -- Fixed: blink doesn't pass ctx here, so we look up the state directly
          enabled = function()
            if vim.bo.filetype == "opencode" then
              local success, blink = pcall(require, "blink.cmp")
              if success then
                -- Only allow ghost text if a completion window is actively open
                return blink.is_visible()
              end
              return false
            end
            return true
          end,
        },
      },
    },
  },
}
