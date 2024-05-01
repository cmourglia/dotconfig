vim.g.mapleader = ' '
vim.g.maplocalleade = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>a')

-- Move selected lines up and down
vim.keymap.set('v', 'J', ":m '<+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- vim.keymap.set('n', 'J', 'mzJ`z')

-- When navigating with C-d and C-u, keep the cursor in the middle of the buffer
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- When navigating the search, keep the cursor in the middle of the buffer
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- When pasting over some selected text, keep the yanked data
-- in the paste buffer, instead of replacing with the pasted-on data
vim.keymap.set('x', '<leader>p', '"_dP')

-- Use leader y to yank in system's clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Delete into the voi
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

vim.keymap.set('i', '<C-c>', '<ESC>')
vim.keymap.set('n', 'Q', '<nop>')

-- Allow going into another project using tmux
-- C-a L -> tmux previous session -> go back to previous project
-- Does not work on Windows
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

-- Reformat
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)

-- Quickfix navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Search and replace the word under the cursor
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Quick open the packer config file
vim.keymap.set('n', '<leader>vpp', function()
    vim.cmd('e ' .. vim.fn.stdpath('config') .. '/lua/sirius/packer.lua')
end)

-- Source the current file
vim.keymap.set('n', '<leader><leader>', function() vim.cmd('so') end)

-- Escape terminal easier
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')


