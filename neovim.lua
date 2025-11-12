return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0d1117", -- Default background
                base01 = "#484f58", -- Lighter background (status bars)
                base02 = "#0d1117", -- Selection background
                base03 = "#484f58", -- Comments, invisibles
                base04 = "#b1bac4", -- Dark foreground
                base05 = "#f0f6fc", -- Default foreground
                base06 = "#f0f6fc", -- Light foreground
                base07 = "#b1bac4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ff7b72", -- Variables, errors, red
                base09 = "#ffa198", -- Integers, constants, orange
                base0A = "#d29922", -- Classes, types, yellow
                base0B = "#3fb950", -- Strings, green
                base0C = "#39c5cf", -- Support, regex, cyan
                base0D = "#58a6ff", -- Functions, keywords, blue
                base0E = "#bc8cff", -- Keywords, storage, magenta
                base0F = "#e3b341", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
