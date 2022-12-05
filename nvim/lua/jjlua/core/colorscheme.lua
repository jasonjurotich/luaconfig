local colorscheme = "vscode"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status then
	vim.notify("vscode colorscheme not found.")
	return
end
