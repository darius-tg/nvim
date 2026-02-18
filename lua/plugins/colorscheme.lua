return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				-- Core
				flavour = "mocha",
				transparent_background = false,
				show_end_of_buffer = false,
				term_colors = false,

				-- Style
				no_italic = false,
				no_bold = false,
				no_underline = false,

				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
				},

				-- UI behavior
				float = {
					transparent = false,
					solid = false,
				},

				dim_inactive = {
					enabled = false,
				},

				custom_highlights = function(colors)
					return {
						-- Main editor
						Normal = { bg = colors.base },
						NormalNC = { bg = colors.base },

						-- Floating windows
						NormalFloat = { bg = colors.mantle },
						FloatBorder = { fg = colors.surface2, bg = colors.mantle },
						FloatTitle = { fg = colors.text, bg = colors.mantle },

						-- Splits
						WinSeparator = { fg = colors.surface1 },

						-- Statusline
						StatusLine = { bg = colors.mantle },
						StatusLineNC = { bg = colors.mantle },

						-- Cursorline (subtle, not muddy)
						CursorLine = { bg = colors.surface0 },

						-- Sidebars / trees
						NvimTreeNormal = { bg = colors.mantle },
						NvimTreeNormalNC = { bg = colors.mantle },
					}
				end,

				-- Integrations
				default_integrations = true,
				auto_integrations = false,
				integrations = {
					cmp = true,
					gitsigns = true,
					treesitter = true,
					telescope = true,
					fzf = true,
					lualine = true,
					mason = true,
					mini = { enabled = true },
					notify = false,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
