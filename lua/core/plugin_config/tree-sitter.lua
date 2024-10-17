require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "vim", "python", "javascript", "cpp", "tsx", "bash" },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
})
