vim.g.mapleader = " "

-- indent
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- redo
vim.keymap.set("n", "U", "<C-r>")

-- append below line to current
vim.keymap.set("n", "J", "mzJ`z")

-- keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- half page jump
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- to the top
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- to the bottom

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make splits equal size
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split

vim.keymap.set("n", "<C-Up>", "<cmd>resize +1<CR>") -- increase size horizontally
vim.keymap.set("n", "<C-Down>", "<cmd>resize -1<CR>") -- decrease size horizontally
vim.keymap.set("n", "<C-Left>", "<cmd>vert resize -1<CR>") -- decrease size vertically
vim.keymap.set("n", "<C-Right>", "<cmd>vert resize +1<CR>") -- increase size vertically

-- delete without saving the value
vim.keymap.set("v", "<leader>d", [["_d]])

-- move the highlighted part
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- prev
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- next

-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- entire line

-- paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]]) -- after the cursor
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]]) -- before the cursor

-- replace the word that cursor is currently on
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
