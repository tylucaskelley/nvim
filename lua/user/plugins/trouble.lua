local map = require("utils").map

local trouble_status_ok, trouble = pcall(require, "trouble")
if not trouble_status_ok then
	return
end

trouble.setup({
	auto_open = false,
	auto_close = true,
	auto_preview = false,
})

map("n", "<leader>d", ":TroubleToggle workspace_diagnostics<CR>") -- toggle diagnostics
