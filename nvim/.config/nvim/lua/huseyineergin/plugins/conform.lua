return {
	"stevearc/conform.nvim",
	event = { "BufNewFile", "BufReadPre" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				sh = { "shfmt" },
				bash = { "shfmt" },
				lua = { "stylua" },
				json = { "prettier" },
				jsonc = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>rf", function()
			conform.format({
				timeout_ms = 500,
				lsp_format = "fallback",
			})
		end)
	end,
}
