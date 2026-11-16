return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		keymap = {
			preset = "enter",
			["<CR>"] = { "accept", "fallback" },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				lsp = {
					transform_items = function(_, items)
						return vim.tbl_filter(function(item)
							return not item.label:match("^</")
						end, items)
					end,
				},
			},
		},
	},
}
