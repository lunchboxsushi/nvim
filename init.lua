-- Set leader first
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")

-- TODO move me into keybindings or extensions
vim.keymap.set("n", "gs", function()
	local bufnr = 0
	local win = vim.api.nvim_get_current_win()
	local clients = vim.lsp.get_clients({ bufnr = bufnr })

	local tsserver = vim.iter(clients):find(function(c)
		return c.name == "tsserver" or c.name == "typescript-tools" or c.name == "ts_ls"
	end)

	if not tsserver then
		vim.notify("No TypeScript LSP client found", vim.log.levels.WARN)
		return
	end

	local params = vim.lsp.util.make_position_params(win, tsserver.offset_encoding or "utf-16")

	tsserver.request("workspace/executeCommand", {
		command = "_typescript.goToSourceDefinition",
		arguments = { params.textDocument.uri, params.position },
	}, function(err, result)
			if err then
				vim.notify("Go to source definition failed: " .. err.message, vim.log.levels.ERROR)
				return
			end
			if not result or vim.tbl_isempty(result) then
				vim.notify("No source definition found", vim.log.levels.INFO)
				return
			end
			vim.lsp.util.jump_to_location(result[1], tsserver.offset_encoding)
		end, bufnr)
end)
