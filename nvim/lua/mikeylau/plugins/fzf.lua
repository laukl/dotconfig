return {
	"ibhagwan/fzf-lua",
	config = function()
		local fzf = require("fzf-lua")
		fzf.setup()

		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", "<cmd>Fzf files<cr>", { desc = "fzf files" })
	end,
}
