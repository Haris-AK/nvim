local neogit = require("neogit")
local gitsigns = require("gitsigns")

neogit.setup({})
gitsigns.setup()

vim.keymap.set("n", "<space>gg", "<CMD>:Neogit<CR>")
vim.keymap.set("n", "<space>gd", "<CMD>:Gvdiffsplit<CR>")
-- Mappings for git conflict resoution
-- co — choose ours
-- ct — choose theirs
-- cb — choose both
-- c0 — choose none
-- ]x — move to previous conflict
-- [x — move to next conflict
