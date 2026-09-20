return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()

		require("nvim-treesitter").install({
			"vimdoc",
			"lua",
			"vim",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { '<filetype>' },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
