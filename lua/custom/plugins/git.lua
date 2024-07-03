return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
		"ibhagwan/fzf-lua", -- optional
		-- Use for :Git blame
		"tpope/vim-fugitive",
		"lewis6991/gitsigns.nvim",
		"sindrets/diffview.nvim",
		-- Used for conflicts
		{ "akinsho/git-conflict.nvim", version = "*", config = true },
	},
	config = function()
		require("custom.git")
	end,
}
