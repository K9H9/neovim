return {
    "testaustime/testaustime.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "ellisonleao/dotenv.nvim" },
    config = function()
        require("testaustime").setup({
            token = "b4jwDwci4V67xVdS5VqJS7y6zexu4qp",
            api_url = "https://testaustime.fi",
            useragent = "NeoVim",
            editor_name = "Neovim",
        })
    end
}
