return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		-- require("rose-pine").setup({
		-- 	variant = "moon",
		-- 	extend_background_behind_borders = false,
		-- 	styles = {
		-- 		bold = false,
		-- 		italic = false,
		-- 		transparency = true,
		-- 	},
		-- })

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	end,
}
