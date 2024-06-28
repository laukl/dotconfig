return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			git = {
				ignore = false,
			},
			update_focused_file = {
				enable = true,
			},
			renderer = {
				icons = {
					show = {
						git = false,
						file = false,
						folder = false,
						folder_arrow = false,
					},
				},
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })
	end,
}
