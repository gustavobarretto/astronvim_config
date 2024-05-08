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
      contrast = "soft",
      terminal_colors = true,
      italic = {
        strings = false,
        comments = false,
        emphasis = false,
        operators = false,
        folds = false
      },
    }) end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set('i', '<C-]>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<C-[>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- { -- further customize the options set by the community
  --   "zbirenbaum/copilot.lua",
  --   opts = {
  --     suggestion = {
  --       keymap = {
  --         accept = "<C-l>",
  --         accept_word = false,
  --         accept_line = false,
  --         next = "<C-.>",
  --         prev = "<C-,>",
  --         dismiss = "<C/>",
  --       },
  --     },
  --   },
  -- }
}
