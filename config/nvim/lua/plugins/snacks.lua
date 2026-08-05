return {
  {
    "folke/snacks.nvim",
    opts = {
      -- 1. Enable the core image rendering engine
      image = {
        enabled = true,
        doc = {
          -- Automatically render inline images in Markdown/org files
          inline = true,
        },
      },
      explorer = {
        hidden = true,
        ignored = true,
        exclude = {
          "node_modules",
          ".git",
          ".cache",
          ".next",
          ".venv",
          "venv",
          "env",
          "__pycache__",
          ".pytest_cache",
          ".mypy_cache",
          "*.pyc",
        },
      },
      terminal = {
        win = {
          position = "bottom",
          border = "rounded",
        },
      },
      picker = {
        hidden = true,
        ignored = true,
        -- 2. Enable live visual previews inside your <leader><leader> search window
        previewers = {
          file = {
            ft_images = { "png", "jpg", "jpeg", "gif", "bmp", "webp", "svg" },
          },
        },
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = {
              "node_modules",
              ".git",
              ".cache",
              ".next",
              ".venv",
              "venv",
              "env",
              "__pycache__",
              ".pytest_cache",
              ".mypy_cache",
              "*.pyc",
            },
          },
        },
      },
    },
  },
}
