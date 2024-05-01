require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Map Ctrl+s to save the current buffer
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save buffer" })

-- Map Alt+j and Alt+k to move lines down and up
map("n", "<A-j>", ":m+<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m'>+<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m-2<CR>gv=gv", { desc = "Move selection up" })
