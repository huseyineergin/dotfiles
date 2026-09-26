return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufNewFile", "BufReadPre" },
	config = function()
		local ibl = require("ibl")

		ibl.setup({
			scope = {
				enabled = false,
			},
			indent = {
				char = "▏",
			},
		})
	end,
}
