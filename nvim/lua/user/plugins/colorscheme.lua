return {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        require("catppuccin").setup({
            -- transparent_background = true,
            -- custom_highlights = function(colors)
            --     return {
            --         NotifyBackground = { bg = colors.base },
            --     }
            -- end
            -- integrations = {
            --     notify = false,
            --     which_key = false,
            -- },
        })
    end,
}
