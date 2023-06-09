local kindIcons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

local cmp = require('cmp')
cmp.setup({
  	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(),
  	      	["<C-j>"] = cmp.mapping.select_next_item(),
  		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
  	 	["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
  	 	["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
  	 	["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
  	 	["<C-e>"] = cmp.mapping {
  	 		i = cmp.mapping.abort(),
  	 		c = cmp.mapping.close(),
  	 	},
  	 	-- Accept currently selected item. If none selected, `select` first item.
  	 	-- Set `select` to `false` to only confirm explicitly selected items.
  		["<CR>"] = cmp.mapping.confirm { select = true },
  	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vimItem)
			vimItem.kind = string.format("%s", kindIcons[vimItem.kind])
			vimItem.menu = ({
				nvim_lsp = "[LSP]",
				luasnip = "[Luasnip]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name]
			return vimItem
		end
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lsp_signature_help" },
		{ name = "buffer" },
		{ name = "path" },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false
	},
	window = {
		documentation = {
      			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		}
	},
	experimental = {
		ghost_text = false,
		native_menu = false
	}
})



