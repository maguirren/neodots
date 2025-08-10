local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- save file
map('n', '<leader>w', ':w<CR>', default_opts)

-- save and quit file
map('n', '<leader>x', ':wq<CR>', default_opts)


-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- move in insert mode
map('i', '<c-h>', '<left>', default_opts)
map('i', '<c-j>', '<down>', default_opts)
map('i', '<c-k>', '<up>', default_opts)
map('i', '<c-l>', '<right>', default_opts)


-- move line in normal mode
-- mover línea hacia abajo en modo normal
map('n', '<a-j>', ':m .+1<cr>==', default_opts)

-- mover línea hacia arriba en modo normal
map('n', '<a-k>', ':m .-2<cr>==', default_opts)

-- mover líneas hacia abajo en modo visual
map('v', '<a-j>', ":m '>+1<cr>gv=gv", default_opts)

-- mover líneas hacia arriba en modo visual
map('v', '<a-k>', ":m '<-2<cr>gv=gv", default_opts)


-- buffers
-- move to next buffer
map('n', '<tab>', ":BufferLineCycleNext<cr>", default_opts)
-- move to previus buffer
map('n', '<s-tab>', ":BufferLineCyclePrev<cr>", default_opts)
-- Save an close current buffer
map('n', '<leader>q', ":w<CR>:bdelete<CR>", default_opts)


-- Open Terminal
map('n', '<c-t>', '<Cmd>ToggleTerm<CR>', default_opts)

-- Open NeoTree
map('n', '<c-n>', ':Neotree<cr>', default_opts)
