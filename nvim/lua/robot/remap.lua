vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- stop space from moving right
vim.keymap.set("n", "<space>", "<Nop>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "J", "<C-d>zz")
vim.keymap.set("n", "K", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- keymaps for telescope-file
vim.api.nvim_set_keymap("n", "<space>pv", ":Telescope file_browser<CR>", { noremap = true })
-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap("n", "<space>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })

-- thePrimeagen/refactoring.nvim

vim.keymap.set({ "n", "x" }, "<leader>re", function() require('refactoring').refactor('Extract Function') end)
vim.keymap.set({ "n", "x" }, "<leader>rf", function() require('refactoring').refactor('Extract Function To File') end)
-- Extract function supports only visual mode
vim.keymap.set({ "n", "x" }, "<leader>rv", function() require('refactoring').refactor('Extract Variable') end)
-- Extract variable supports only visual mode
vim.keymap.set({ "n", "x" }, "<leader>rI", function() require('refactoring').refactor('Inline Function') end)
-- Inline func supports only normal
vim.keymap.set({ "n", "x" }, "<leader>ri", function() require('refactoring').refactor('Inline Variable') end)
-- Inline var supports both normal and visual mode

vim.keymap.set({ "n", "x" }, "<leader>rb", function() require('refactoring').refactor('Extract Block') end)
vim.keymap.set({ "n", "x" }, "<leader>rbf", function() require('refactoring').refactor('Extract Block To File') end)
vim.keymap.set({ "n", "x" }, "<leader>rr", function() require('telescope').extensions.refactoring.refactors() end)
-- Extract block supports only normal mode
