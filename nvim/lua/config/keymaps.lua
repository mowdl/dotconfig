-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>t",
  ":vsp <CR>:terminal ./test.sh<CR>",
  { noremap = true, silent = true, desc = "Run test.sh" }
)
