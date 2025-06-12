vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>q", ":qa<cr>", { desc = "Quit all" })

vim.keymap.set("n", "<leader>fg", function()
	local pattern = vim.fn.input("rg: ")
	if pattern ~= "" then
		local safe_pattern = vim.fn.shellescape(pattern)
		vim.cmd("silent! grep " .. safe_pattern)
		vim.cmd("copen")
	end
end, { desc = "ripgrep" })
