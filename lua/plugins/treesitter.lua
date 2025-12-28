return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
     require'nvim-treesitter'.setup {
  	-- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
    install_dir = vim.fn.stdpath('data') .. '/site',
  	highlight = { enable = true },
  	ensure_installed = {"lua", "python", "c" },
    auto_install = true,
  	indent = { enable = true }
    }

    -- Parsers and queries can then be installed with
    --require'nvim-treesitter'.install { 'lua' }
   -- require'nvim-treesitter'.install{'python'}
  end
}
