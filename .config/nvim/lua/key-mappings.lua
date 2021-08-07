local api = vim.api

-- Telescope
api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require'telescope.builtin'.find_files()<CR>']], { noremap = true });
api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require'telescope.builtin'.live_grep()<CR>']], { noremap = true });
api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require'telescope.builtin'.buffers()<CR>']], { noremap = true });
api.nvim_set_keymap('n', '<leader>fh', [[<cmd>lua require'telescope.builtin'.help_tags()<CR>']], { noremap = true });

-- Move to previous/next
api.nvim_set_keymap('n', '<A-,>', ':BufferPrevious<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-.>', ':BufferNext<CR>', { silent = true })
-- Re-order to previous/next
api.nvim_set_keymap('n', '<A-<>', ':BufferMovePrevious<CR>', { silent = true })
api.nvim_set_keymap('n', '<A->>', ':BufferMoveNext<CR>', { silent = true })
-- Goto buffer in position...
api.nvim_set_keymap('n', '<A-1>', ':BufferGoto 1<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-2>', ':BufferGoto 2<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-3>', ':BufferGoto 3<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-4>', ':BufferGoto 4<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-5>', ':BufferGoto 5<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-6>', ':BufferGoto 6<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-7>', ':BufferGoto 7<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-8>', ':BufferGoto 8<CR>', { silent = true })
api.nvim_set_keymap('n', '<A-9>', ':BufferLast<CR>', { silent = true })
-- Close buffer
api.nvim_set_keymap('n', '<A-c>', ':BufferClose<CR>', { silent = true })
-- Magic buffer-picking mode
api.nvim_set_keymap('n', '<C-s>   ', ':BufferPick<CR>', { silent = true })
-- Sort automatically by...
api.nvim_set_keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', { silent = true })
api.nvim_set_keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', { silent = true })

-- Pane navigation
api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- Explorer
api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
