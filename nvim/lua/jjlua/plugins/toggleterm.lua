local status, toggleterm = pcall(require, "toggleterm")
if not status then
	return
end

toggleterm.setup({
	size = 80,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 1,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	persist_mode = false,
	close_on_exit = true,
	direction = "vertical",
	shell = vim.o.shell,
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "spt", hidden = true, direction = "float" })

function _SPOTIFY()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "sp", "<cmd>lua _SPOTIFY()<CR>", { noremap = true, silent = true })
