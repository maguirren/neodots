return {
	"tpope/vim-fugitive",
	cmd = {"G", "Git"},
	key = {
		{"<leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch"},
		{"<leader>gl", ":Gir pull<cr>", desc = "Git pull"},
	}
}
