local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

-- See `:help nvim-treesitter`
configs.setup({
	-- Add languages to be installed here that you want installed for treesitter
	ensure_installed = {
		"c",
		"cpp",
		"c_sharp",
		"go",
		"lua",
		"python",
		"rust",
		"typescript",
		"javascript",
		"bash",
		"json",
		"gitignore",
		"html",
		"markdown",
		"yaml",
		"tsx",
		"prisma",
		"java",
		"svelte",
		"vim",
		"query",
		"vimdoc",
	},
	auto_install = true,
	highlight = { enable = true },
	indent = {
		enable = true,
		disable = "python",
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<c-space>",
			node_incremental = "<c-space>",
			scope_incremental = "<c-s>",
			node_decremental = "<c-backspace>",
		},
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["aa"] = "@parameter.outer",
				["ia"] = "@parameter.inner",
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["<leader>nf"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>a"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>A"] = "@parameter.inner",
			},
		},
	},
	autotag = {
		enable = true,
		filetypes = { "html", "xml", "php", "vue" },
	},
})
