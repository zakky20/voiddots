return {
	"arcticicestudio/nord-vim",
	priority = 1000,
	config = function()
		vim.g.nord_contrast = true -- enable contrast for dark background
		vim.g.nord_borders = true -- show borders
		vim.g.nord_disable_background = false -- keep background
		vim.g.nord_italic = true -- italic for comments, keywords
		vim.g.nord_uniform_diff_background = true
		vim.g.nord_bold = false -- disable bold

		vim.cmd.colorscheme("nord")
	end,
}
