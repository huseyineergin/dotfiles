return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	config = function()
		local ufo = require("ufo")
		vim.keymap.set("n", "zR", ufo.openAllFolds)
		vim.keymap.set("n", "zM", ufo.closeAllFolds)
		vim.keymap.set("n", "K", function()
			local winid = ufo.peekFoldedLinesUnderCursor()
			if not winid then
				vim.lsp.buf.hover()
			end
		end)

		ufo.setup({
			provider_selector = function()
				return { "lsp", "indent" }
			end,
		})
	end,
}
