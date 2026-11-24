vim.keymap.set("i", "jf", "<Esc>")
vim.keymap.set("i", "jk", " -> ")

vim.keymap.set({"n", "v"}, "<Leader>y", '"+y')

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<Leader>e", ":Ex<Esc>")

vim.keymap.set("n", "<Leader>dk", vim.diagnostic.open_float)
vim.keymap.set("n", "<Leader>dp", function ()
	vim.diagnostic.jump({count= -1, float = true})
end)
vim.keymap.set("n", "<Leader>dn", function ()
	vim.diagnostic.jump({count= 1, float = true})
end)
