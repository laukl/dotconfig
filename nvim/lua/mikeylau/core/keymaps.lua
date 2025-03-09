vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>q", ":qa<cr>", { desc = "Quit all" })
