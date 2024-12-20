-- File Name: init.lua
-- File Path: /etc/xdg/nvim/init.lua
-- Description: System-wide neovim configuration file.

-- Copyright (c) 2024 Aryan
-- SPDX-License-Identifier: BSD-3-Clause

-- Version: 1.1.0

-- Basic Settings
vim.wo.number = true
vim.opt.textwidth = 80
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.opt.clipboard:append('unnamedplus')

-- Keybinds
vim.api.nvim_set_keymap('n', 'J', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '5k', { noremap = true, silent = true })

vim.api.nvim_set_keymap('x', 'J', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', '5k', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ', ', ':nohlsearch <CR>', { noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap('n', '<C-h>', ':set spell!<CR>', { noremap = true, silent = true})

-- Status Line
vim.opt.titlestring = "%F"
vim.opt.title = true
vim.opt.laststatus = 2
vim.opt.statusline = [[%#LineNr# %t %= %l %L]]

-- Colorscheme
vim.cmd('colorscheme aurora')

---- Transparency
vim.cmd('hi! Normal ctermbg=none guibg=none')
vim.cmd('hi! EndOfBuffer ctermbg=none guibg=none')
vim.cmd('hi! LineNr ctermbg=none guifg=#ffcccb guibg=none')
vim.cmd('hi! NormalNC ctermbg=none guibg=none')

---- VViki setup
vim.g.vviki_root = '~/docs/notes'
vim.g.vviki_ext = '.adoc'
vim.api.nvim_set_keymap('n', '<leader>ww', ':e ~/docs/notes/index.adoc<CR>', { noremap = true, silent = true})
