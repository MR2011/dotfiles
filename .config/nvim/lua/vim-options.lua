vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.wrap = false

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

vim.opt.cursorline = true

-- Navigate vim panes better
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Go to Right Window", remap = true })

vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- save file
-- vim.keymap.set({ "i", "x", "n", "s" }, "<leader>s", "<cmd>w<cr><esc>", { desc = "Save File" })
