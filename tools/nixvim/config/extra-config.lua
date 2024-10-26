-- cmp-copilot.nix
-- cmp-copilot.nix
-- cmp-copilot.nix
require("copilot").setup({
	suggestion = { enabled = false },
	panel = { enabled = false },
})
-- cmp-copilot.nix
-- cmp-copilot.nix
-- cmp-copilot.nix

-- cmp.nix
-- cmp.nix
-- cmp.nix
luasnip = require("luasnip")
kind_icons = {
	Text = "󰊄",
	Method = " ",
	Function = "󰡱 ",
	Constructor = " ",
	Field = " ",
	Variable = "󱀍 ",
	Class = " ",
	Interface = " ",
	Module = "󰕳 ",
	Property = " ",
	Unit = " ",
	Value = " ",
	Enum = " ",
	Keyword = " ",
	Snippet = " ",
	Color = " ",
	File = "",
	Reference = " ",
	Folder = " ",
	EnumMember = " ",
	Constant = " ",
	Struct = " ",
	Event = " ",
	Operator = " ",
	TypeParameter = " ",
}

local cmp = require("cmp")

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	sources = {
		{ name = "buffer" },
	},
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = "buffer" },
	}),
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
-- cmp.nix
-- cmp.nix
-- cmp.nix

-- lazygit.nix
-- lazygit.nix
-- lazygit.nix
require("telescope").load_extension("lazygit")
-- lazygit.nix
-- lazygit.nix
-- lazygit.nix

-- lsp.nix
-- lsp.nix
-- lsp.nix
local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = _border,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = _border,
})

vim.diagnostic.config({
	float = { border = _border },
})

require("lspconfig.ui.windows").default_options = {
	border = _border,
}
-- lsp.nix
-- lsp.nix
-- lsp.nix

-- telescope.nix
-- telescope.nix
-- telescope.nix
require("telescope").setup({
	pickers = {
		colorscheme = {
			enable_preview = true,
		},
	},
})
-- telescope.nix
-- telescope.nix
-- telescope.nix
