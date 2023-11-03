return {
	"voldikss/vim-floaterm",
	version = "*",
	config = function()
		vim.keymap.set('t', '<C-[>', '<C-\\><C-n>', { silent = true })
		vim.keymap.set('n', '<F10>', ':FloatermNew --width=0.9 --height=0.9<cr>', { silent = true })
		vim.keymap.set('t', '<F10>', '<C-\\><C-n>:FloatermNew --width=0.9 --height=0.9<cr>', { silent = true })
		vim.keymap.set('n', '<F11>', ':FloatermNext<cr>', { silent = true })
		vim.keymap.set('t', '<F11>', '<C-\\><C-n>:FloatermNext<cr>', { silent = true })
		vim.keymap.set('n', '<F12>', ':FloatermToggle<cr>', { silent = true })
		vim.keymap.set('t', '<F12>', '<C-\\><C-n>:FloatermToggle<cr>', { silent = true })
	end,
}
