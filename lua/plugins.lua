vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer сам себя
    use 'wbthomason/packer.nvim'

    -----------------------------------------------------------
    -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
    -----------------------------------------------------------

    -- Цветовая схема
    use 'joshdick/onedark.vim'
    --- Информационная строка внизу
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}},
    -- Табы вверху
    use {'akinsho/bufferline.nvim'},


    -----------------------------------------------------------
    -- НАВИГАЦИЯ
    -----------------------------------------------------------
    -- Файловый менеджер
    use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'},
    -- Навигация внутри файла по классам и функциям
    use 'majutsushi/tagbar'
    -- Замена fzf и ack
    use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }},


    -----------------------------------------------------------
    -- LSP и автодополнялка
    -----------------------------------------------------------


    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Collection of configurations for built-in LSP client
    use 'neovim/nvim-lspconfig'
    -- Автодополнялка
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    --- Автодополнлялка к файловой системе
    use 'hrsh7th/cmp-path'
    -- Snippets plugin
    use 'L3MON4D3/LuaSnip'

    -----------------------------------------------------------
    -- PYTHON
    -----------------------------------------------------------
    --- Шапка с импортами приводим в порядок
    -- use 'fisadev/vim-isort'
    -- Поддержка темплейтом jinja2
    use 'mitsuhiko/vim-jinja'


    -----------------------------------------------------------
    -- HTML и CSS
    -----------------------------------------------------------
    -- Подсвечивает закрывающий и откры. тэг. Если, где-то что-то не закрыто, то не подсвечивает.
    use 'idanarye/breeze.vim'
    -- Закрывает автоматом html и xml тэги. Пишешь <h1> и он автоматом закроется </h1>
    use 'alvan/vim-closetag'
    -- Подсвечивает #ffffff
    use 'ap/vim-css-color'

end)
