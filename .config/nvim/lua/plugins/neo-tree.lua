return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left toggle<CR>", { desc = "Explorer NeoTree (Root Dir)" })
		vim.keymap.set("n", "<leader>be", ":Neotree buffers reveal float<CR>", {})
	end,
}
