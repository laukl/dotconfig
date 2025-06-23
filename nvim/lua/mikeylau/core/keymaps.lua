vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>.", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Code Action" })
