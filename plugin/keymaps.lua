local set = vim.keymap.set
--
--Remap space as leader key
set("", "<Space>", "<Nop>", opts)

set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")
set("n", "<c-h>", "<c-w><c-h>")

-- Visual --
-- Stay in indent mode
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

-- Move text up and down
set("v", "<A-k>", ":m .-2<CR>==", opts)
set("v", "<A-j>", ":m .+1<CR>==", opts)
set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
set("x", "J", ":move '>+1<CR>gv-gv", opts)
set("x", "K", ":move '<-2<CR>gv-gv", opts)
set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<c-w>5+")
set("n", "<M-s>", "<c-w>5-")

-- Resize with arrows
set("n", "<C-Up>", ":resize +4<CR>", opts)
set("n", "<C-Down>", ":resize -4<CR>", opts)
set("n", "<C-Left>", ":vertical resize -4<CR>", opts)
set("n", "<C-Right>", ":vertical resize +4<CR>", opts)

-- Navigate buffers
-- set("n", "<S-l>", ":bnext<CR>", opts)
-- set("n", "<S-h>", ":bprevious<CR>", opts)
set("n", "<leader>bc", ":bd<CR>", opts)

-- Opening windows
set("n", "<leader>v", "<C-w>v", opts)
set("n", "<leader>s", "<C-w>s", opts)
set("n", "<leader>c", "<C-w>c", opts)
set("n", "<leader>o", "<C-w>o", opts)

-- Navigate tabs
set("n", "<leader><C-i>", ":tabnext<CR>", opts)

set("n", "<C-u>", "<C-u>zz", opts)
set("n", "<C-d>", "<C-d>zz", opts)
