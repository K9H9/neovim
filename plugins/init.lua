
return {
  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup {
        modes = {
          ataraxis = {
            shade = "dark",
          }
        }
      }
    end,
  },
  ['testaustime/testaustime.nvim'] = {
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("custom.plugins.testaustime")
    end
  },
}
