return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            rust = { "rustfmt", lsp_format = "fallback" },
        },
        format_on_save = {
            timeout_ms = 5,
            lsp_fallback = true,
        },
    },
    config = function(_, opts)
        require("conform").setup(opts)

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function()
                require("conform").format({ async = false, lsp_fallback = true })
                vim.cmd("checktime")
            end,
        })
    end,
}
