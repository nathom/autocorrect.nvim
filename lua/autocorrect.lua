local ia = vim.cmd.inoreabbrev

vim.g.autocorrect_mappings_defined = false

M = {}
function M.Autocorrect()
	if vim.g.autocorrect_mappings_defined then
		return
	end
	local maps = require("ia_maps")
	local lhs = maps.lhs
	local rhs = maps.rhs
	for i = 1, #lhs do
		ia("<buffer>", lhs[i], rhs[i])
	end
	vim.g.autocorrect_mappings_defined = true
end

return M
