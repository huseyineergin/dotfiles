return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		require("oil").setup({
			use_default_keymaps = false,
			keymaps = {
				["gr"] = "actions.refresh",
				["<CR>"] = "actions.select",
				["g?"] = "actions.show_help",
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external",
				["g."] = "actions.toggle_hidden",
			},
		})

		vim.keymap.set("n", "-", "<cmd>Oil<CR>")
	end,
}
