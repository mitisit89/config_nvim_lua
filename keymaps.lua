local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('i', 'jk', '<Esc>', {noremap = true})
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})

-- По ,<Space> очищаем последний поиск с подсветкой
map('n', ',<Space>', ':nohl<CR>', default_opts)


-- Сочетание клавишь открывающих буфер
map('', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
-- Сочетание клавишь закрывающих буфер
map('n', 'gw', ':bdelete<CR>', default_opts)

-- Комментирование блоков кода
map('', 'cc', ':norm i#<cr>', default_opts)
map('', 'uc', ':norm ^x<cr>', default_opts)

-- Работа с буферами
map('', 'gn', ':BufferLineCycleNext<cr>', default_opts)
map('', 'gp', ':BufferLineCyclePrev<cr>', default_opts)

