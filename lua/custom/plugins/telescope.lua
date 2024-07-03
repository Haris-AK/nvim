return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
		"nvim-telescope/telescope-smart-history.nvim",
		"nvim-telescope/telescope-media-files.nvim",
	},
	config = function()
		require("custom.telescope")
	end,
}
