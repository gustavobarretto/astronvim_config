return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    config = function() require("gruvbox").setup({
      italic = {
        strings = false,
        comments = false,
        emphasis = false,
        operators = false,
        folds = false
      },
      contrast = "hard"
    }) end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  }
}
