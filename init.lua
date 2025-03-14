-- Load leader keys before loading lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

-- Add lazy to the 'runtime' path allowing us to 'require' it
-- @diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Setup lazy and load my 'lua/custom/plugins' folder
require("lazy").setup({ import = "custom/plugins" }, {
	change_detection = {
		notify = false,
	},
})
