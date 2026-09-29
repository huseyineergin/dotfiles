return {
	"stevearc/conform.nvim",
	event = { "BufNewFile", "BufReadPre" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				bash = { "shfmt" },
				json = { "prettier" },
				jsonc = { "prettier" },
				lua = { "stylua" },
				markdown = { "prettier" },
				sh = { "shfmt" },
				toml = { "taplo" },
				yaml = { "prettier" },
			},
			formatters = {
				prettier = {
					args = {
						"--trailing-comma",
						"none",
						"--stdin-filepath",
						"$FILENAME",
					},
				},
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
