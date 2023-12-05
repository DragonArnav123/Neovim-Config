function color_my_pencils(color)
	color = color or "onedark"

	vim.g.gruvbox_contrast_dark = "hard";
	vim.g.gruvbox_italicize_comments = 1;

	vim.cmd.colorscheme(color)
	-- 0 for global space (every neovim window)
	-- Normal, NormalFlot says for neovim (we have no idea whu)
	-- bg = none for transparency
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- Example config in Lua
	-- vim.g.gruvbox_baby_function_style = "NONE"
	-- vim.g.gruvbox_baby_keyword_style = "italic"

	-- Each highlight group must follow the structure:
	-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
	-- See also :h highlight-guifg
	-- Example:
	-- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}

	-- Enable telescope theme
	-- vim.g.gruvbox_baby_telescope_theme = 1

	-- Enable transparent mode
	-- vim.g.gruvbox_baby_transparent_mode = 0


end

color_my_pencils()
