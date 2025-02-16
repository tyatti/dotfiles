-- Ensure lazy.nvim is properly loaded
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load Plugins
require("lazy").setup({
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
                transparent_background = false,
                integrations = {
                    treesitter = true,
                    nvimtree = true,
                    telescope = true,
                    gitsigns = true,
                }
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
})

