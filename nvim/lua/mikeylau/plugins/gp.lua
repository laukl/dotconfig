return {
	"robitx/gp.nvim",
	config = function()
		local conf = {
			agents = {
				{
					name = "ChatGPT3-5",
					disable = true,
				},
			},
		}
		require("gp").setup(conf)
	end,
}
