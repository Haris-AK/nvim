return {
	-- comment out multiple lines
	-- use 'gc' to comment out
	"tpope/vim-commentary",
	"joosepalviste/nvim-ts-context-commentstring",
	-- autopairs for brackets
	"windwp/nvim-autopairs",
	-- Illumiante word under cursor
	"RRethy/vim-illuminate",
	-- Show current file / function below buffer name
	"utilyre/barbecue.nvim",
	-- Editing 'surroundings'
	"tpope/vim-surround", -- cs''
	dependencies = {
		"SmiteshP/nvim-navic",
	},
	-- Allows movement to the visible areas
	{
		"ggandos/flit.nvim",
		keys = function()
			local ret = {}
			for _, key in ipairs({ "f", "F", "t", "T" }) do
				ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
			end
			return ret
		end,
		opts = { labeled_modes = "nx" },
		-- Builds on top of flit.nvim
		"ggandor/leap.nvim",
	},
}
