local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "wj", function() harpoon:list():select(1) end)
vim.keymap.set("n", "wk", function() harpoon:list():select(2) end)
vim.keymap.set("n", "wl", function() harpoon:list():select(3) end)
vim.keymap.set("n", "w;", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>j", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>k", function() harpoon:list():next() end)
