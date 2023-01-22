return {
  ["Exafunction/codeium.vim"] = {},
  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup {}
    end,
  },
  ['testaustime/testaustime.nvim'] = {
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      dofile("/home/koho/code/neovim/plugins/testaustime/token.lua")
    end
  },
}
