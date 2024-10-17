vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	filters = {
		dotfiles = false,
	},
	git = {
		enable = true,
		ignore = false,
	},
})

vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
-- Map Ctrl + F to focus on nvim-tree
vim.keymap.set("n", "<c-t>", ":NvimTreeFocus<CR>")

vim.cmd([[hi NvimTreeNormal guibg=NONE]])
--
