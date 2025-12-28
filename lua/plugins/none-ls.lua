-- lining and formatting
return {
  { -- needed extra
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
  },
  {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

        --null_ls.builtins.formatting.pyink, --formatter
        --none-ls.nvim needed herefor
        require("none-ls.diagnostics.flake8"), -- linter
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
},
}
