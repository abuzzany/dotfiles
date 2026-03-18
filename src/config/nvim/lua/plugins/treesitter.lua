return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "ruby", "rust", "javascript", "typescript" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

