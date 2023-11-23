-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
OTPS = { noremap = true, silent = true }

-- Ctrl-C / Ctrl-V
vim.keymap.set({ "n", "v", "x" }, "<C-v>", '"+p', OTPS)

vim.keymap.set({ "n", "v", "x" }, "<C-c>", '"*y', OTPS)

--  all line
vim.keymap.set({ "n", "v", "x" }, "<C-q>", '"*yy', OTPS)

-- Select all (Ctrl-A)
vim.keymap.set({ "n", "v", "x" }, "<C-a>", "ggVG")
