local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "catppuccin/nvim",                 name = "catppuccin", priority = 1000 },
    { "nvim-treesitter/nvim-treesitter", build = ':TSUpdate' },
    { "theprimeagen/harpoon" },
    { "mbbill/undotree" },
    { "tpope/vim-fugitive" },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },
    { 'windwp/nvim-autopairs',   event = "InsertEnter" },
    { 'simrat39/rust-tools.nvim' },
    { 'peterhoeg/vim-qml' },
    { 'artoj/qmake-syntax-vim' }
})
