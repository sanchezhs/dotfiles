local opts = {
    noremap = true,
    silent  = true
}
local term_opts = {
    silent = true
}

local keymap = vim.api.nvim_set_keymap

-- Change space to <leader> key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-h>", "<C-w>h", opts) -- focus left window 
keymap("n", "<C-j>", "<C-w>j", opts) -- focus below window
keymap("n", "<C-k>", "<C-w>k", opts) -- focus upper window
keymap("n", "<C-l>", "<C-w>l", opts) -- focus right window

keymap("n", "<C-Up>",    ":resize +2<CR>", opts)
keymap("n", "<C-Down>",  ":resize -2<CR>", opts)
keymap("n", "<C-Left>",  ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--keymap("v", "<A-j>", ":m .+1<CR>==", opts)
--keymap("v", "<A-k>", ":m .-2<CR>==", opts)


keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) -- <cr> -> enter
keymap("n", "<leader>ee", ":NvimTreeFindFile<cr>", opts)
