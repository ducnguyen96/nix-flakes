vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })

-- conform.nix
-- conform.nix
-- conform.nix
local slow_format_filetypes = {}

vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		-- FormatDisable! will disable formatting just for this buffer
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat-on-save",
})
vim.api.nvim_create_user_command("FormatToggle", function(args)
	if args.bang then
		-- Toggle formatting for current buffer
		vim.b.disable_autoformat = not vim.b.disable_autoformat
	else
		-- Toggle formatting globally
		vim.g.disable_autoformat = not vim.g.disable_autoformat
	end
end, {
	desc = "Toggle autoformat-on-save",
	bang = true,
})
-- conform.nix
-- conform.nix
-- conform.nix
