local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

mapper('n', '<leader>x', ':w <CR>')
mapper('n', '<leader>X', ':w! <CR>')
mapper('n', '<leader>z', ':q <CR>')
mapper('n', '<leader>Z', ':q! <CR>')
mapper('i', 'ii', '<ESC>')
mapper('v', 'ii', '<ESC>')
mapper('i', 'iI', '<ESC>A')

mapper('n', 'tt', ':t. <CR>')
mapper('n', 'Y', 'y$')

mapper('n', '<leader>r', ':source %<CR>')

mapper('n', '<leader>C', ':LuaCacheLog <CR>')

-- Tabs navigation
mapper('n', '<leader>j', '10<CR>')
mapper('n', '<leader>;', '20<CR>')
mapper('n', '<leader>k', '10-<CR>')
mapper('n', '<leader>p', '20-<CR>')
mapper('v', '<leader>j', '10<CR>')
mapper('v', '<leader>;', '20<CR>')
mapper('v', '<leader>k', '10-<CR>')
mapper('v', '<leader>p', '20-<CR>')

-- Resize
mapper('n', '<leader>=', '<c-w>5+')
mapper('n', '<leader>-', '<c-w>5-')
mapper('n', '<leader>>', '10<c-w>>')
mapper('n', '<leader><', '10<c-w><')


-- Run current file
mapper('n', '<leader>1', ':!node %<CR>')
mapper('n', '<leader>2', ':!python %<CR>')
mapper('n', '<leader>3', ':!sh %<CR>')

-- Instalar complementos y settings
-- Testing
mapper('n', '<leader>t', ':TestNearest <CR>')
mapper('n', '<leader>T', ':TestFile <CR>')
mapper('n', '<leader>TT', ':TestSuite <CR>')

---------------------------------
------------ IDE CONFIG ---------
---------------------------------

-- TeleScope
mapper('n', '<leader>f', ':Telescope find_files<CR>')
mapper('n', '<leader>F', ':Telescope live_grep<CR>')
mapper('n', '<leader>b', ':Telescope buffers<CR>')
---- neo-tree
mapper('n', '<leader>m', ':Neotree<CR>')
---- Easy-Motion ----
mapper('n', '<leader>s', '<Plug>(easymotion-s2)')
mapper('n', '<leader>w', '<leader><leader>w')
mapper('n', '<leader>e', '<Leader><Leader>e')
mapper('n', '<leader>b', '<Leader><Leader>b')
---- lsp format ----
mapper('n', '<leader>a', ':lua vim.lsp.buf.formatting_sync() <cr>')
---- Harpoon ----
mapper('n', '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu() <cr>')
mapper('n', '<leader>R', ':lua require("harpoon.mark").add_file() <cr>')
mapper('n', '<leader>]', ':lua require("harpoon.ui").nav_next() <cr>')
mapper('n', '<leader>[', ':lua require("harpoon.ui").nav_prev() <cr>')
