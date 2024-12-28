--require("catppuccin").setup({
--	flavour = "mocha",
--	backgound = {
--		light = "latte",
--		dark = "frappe",
--	},
--	transparent_background = true,
--})

require("tokyonight").setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
})

vim.cmd.colorscheme("tokyonight-night")
--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
