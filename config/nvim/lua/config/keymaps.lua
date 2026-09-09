-- Delete/change without yanking only when it helps most
vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set({ "n", "x" }, "D", '"_D', { desc = "Delete line without yanking" })

-- Keep c/C ergonomic, but these are still very opinionated
vim.keymap.set({ "n", "x" }, "c", '"_c', { desc = "Change without yanking" })
vim.keymap.set({ "n", "x" }, "C", '"_C', { desc = "Change line without yanking" })

-- Make x ergonomic without affecting operator-pending behavior
vim.keymap.set("n", "x", '"_x', { desc = "Delete char without yanking" })

-- Keep substitute ergonomic, but note this is a strong remap
vim.keymap.set("n", "s", '"_s', { desc = "Substitute without yanking" })

-- Visual paste without overwriting clipboard
vim.keymap.set("x", "p", '"_dP', { desc = "Paste over without yanking" })

-- Ask pi with the current buffer as context
vim.keymap.set("n", "<leader>ai", ":PiAsk<CR>", { desc = "Ask pi" })

-- Ask pi with visual selection as context
vim.keymap.set("v", "<leader>ai", ":PiAskSelection<CR>", { desc = "Ask pi (selection)" })
