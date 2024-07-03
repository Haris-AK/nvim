local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		event = "LazyLoad",
		diagnostics = "nvim_lsp",
		always_show_bufferline = false,
		diagnostics_indicator = function(_, _, diag)
			local dicons = require("custom.icons").diagnostics
			local ret = (diag.error and dicons.Error .. diag.error .. " " or "")
				.. (diag.warning and dicons.Warn .. diag.warning or "")
			return vim.trim(ret)
		end,
		offsets = {
			{
				filetype = "neo-tree",
				text = "Neo-tree",
				highlight = "Directory",
				text_align = "left",
			},
		},
	},
	mode = tabs,
})
