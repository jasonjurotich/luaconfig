require("jjlua.plugins-setup")
require("jjlua.core.options")
require("jjlua.core.keymaps")
require("jjlua.core.colorscheme")
require("jjlua.plugins.autopairs")
require("jjlua.plugins.comment")
require("jjlua.plugins.nvim-tree")
require("jjlua.plugins.lualine")
require("jjlua.plugins.telescope")
require("jjlua.plugins.nvim-cmp")
require("jjlua.plugins.mason")
require("jjlua.plugins.lspconfig")
require("jjlua.plugins.lspsaga")
require("jjlua.plugins.null-ls")
require("jjlua.plugins.treesitter")
require("jjlua.plugins.gitsigns")
require("jjlua.plugins.toggleterm")
require("jjlua.plugins.bufferline")

require("vscode").setup({
	transparent = true,
	italic_comments = true,
	disable_nvimtree_bg = true,
	-- color_overrides = {vscLineNumber = '#FFFFFF'},
})

vim.opt.list = true
require("indent_blankline").setup({
	buftype_exclude = { "terminal" },
	filetype_exclude = { "dashboard", "NvimTree", "packer" },
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
})

vim.cmd([[inoremap ww println!("{:#?}",);<left><left>]])
vim.cmd([[let g:python3_host_prog = '/opt/homebrew/bin/python3']])
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
