return {
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		priority = 100,
		dependencies = {
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"FelipeLema/cmp-async-path",
			"hrsh7th/cmp-buffer",
			{
				"L3MON4D3/LuaSnip",
				build = "make install_jsregexp",
				dependencies = { "rafamadriz/friendly-snippets" },
			},
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("custom.completion")
		end,
	},
}
