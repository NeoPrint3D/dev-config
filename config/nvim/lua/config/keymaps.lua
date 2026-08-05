-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set({ "n", "v" }, "D", '"_D', { desc = "Delete line without yanking" })
vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change without yanking" })
vim.keymap.set({ "n", "v" }, "C", '"_C', { desc = "Change line without yanking" })
vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Delete char without yanking" })
vim.keymap.set({ "n", "v" }, "s", '"_s', { desc = "Substitute without yanking" })

-- Visual mode paste without overwriting your clipboard with the replaced text
vim.keymap.set("v", "p", '"_dP', { desc = "Paste over without yanking" })
