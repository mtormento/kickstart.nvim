-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			window = {
				mappings = {
					["<cr>"] = "show_file_details",
					["o"] = { "open", nowait = true },
					["S"] = { "open_split", nowait = true },
					["s"] = { "open_vsplit", nowait = true },
					["t"] = { "open_tabnew", nowait = true },
					["w"] = { "open_with_window_picker", nowait = true },
				}
			},
			filesystem = {
				window = {
					mappings = {
						["i"] = { "show_help", nowait = false, config = {
							title = "Order by",
							prefix_key = "i"
						} },
						["ic"] = { "order_by_created", nowait = false },
						["id"] = { "order_by_diagnostics", nowait = false },
						["ig"] = { "order_by_git_status", nowait = false },
						["im"] = { "order_by_modified", nowait = false },
						["in"] = { "order_by_name", nowait = false },
						["is"] = { "order_by_size", nowait = false },
						["it"] = { "order_by_type", nowait = false },
						["oc"] = "none",
						["od"] = "none",
						["og"] = "none",
						["om"] = "none",
						["on"] = "none",
						["os"] = "none",
						["ot"] = "none",
					}
				},
			},
			buffers = {
				window = {
					mappings = {
						["i"] = { "show_help", nowait = false, config = {
							title = "Order by",
							prefix_key = "i"
						} },
						["ic"] = { "order_by_created", nowait = false },
						["id"] = { "order_by_diagnostics", nowait = false },
						["ig"] = { "order_by_git_status", nowait = false },
						["im"] = { "order_by_modified", nowait = false },
						["in"] = { "order_by_name", nowait = false },
						["is"] = { "order_by_size", nowait = false },
						["it"] = { "order_by_type", nowait = false },
						["oc"] = "none",
						["od"] = "none",
						["og"] = "none",
						["om"] = "none",
						["on"] = "none",
						["os"] = "none",
						["ot"] = "none",
					}
				},
			},
			git_status = {
				window = {
					mappings = {
						["i"] = { "show_help", nowait = false, config = {
							title = "Order by",
							prefix_key = "i"
						} },
						["ic"] = { "order_by_created", nowait = false },
						["id"] = { "order_by_diagnostics", nowait = false },
						["ig"] = { "order_by_git_status", nowait = false },
						["im"] = { "order_by_modified", nowait = false },
						["in"] = { "order_by_name", nowait = false },
						["is"] = { "order_by_size", nowait = false },
						["it"] = { "order_by_type", nowait = false },
						["oc"] = "none",
						["od"] = "none",
						["og"] = "none",
						["om"] = "none",
						["on"] = "none",
						["os"] = "none",
						["ot"] = "none",
					}
				},
			},
		}
	end,
}
