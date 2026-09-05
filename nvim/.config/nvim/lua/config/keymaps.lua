-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(m, k, v, opts)
  vim.keymap.set(m, k, v, opts)
end
local cmd = vim.cmd
-- local g = vim.g

map("i", "fd", "<ESC>")

-- move between splits
map("n", "<leader>wh", "<C-w>h", { desc = "Got to the left pane" })
map("n", "<leader>wl", "<C-w>l", { desc = "Got to the right pane" })
map("n", "<leader>wj", "<C-w>j", { desc = "Got to the pane below" })
map("n", "<leader>wk", "<C-w>k", { desc = "Got to the pane above" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close all other panes" })

--splits
map("n", "<leader>h", cmd.sp, { desc = "Split window horizontally" }) -- split below
map("n", "<leader>v", cmd.vsp, { desc = "Split window vertically" }) -- split right
map("n", "<leader>w=", "<C-w>=", { desc = "Set split size equal" }) -- split right

-- terminal
map("t", "fd", [[<C-\><C-n>]]) -- esc in terminal

--buffers
-- map("n", "<leader>bd", cmd.bd, {desc = '[bd] Delete current buffer'}) -- already exits
map("n", "<leader>bn", cmd.bn, { desc = "[bn] Go to next buffer" })
map("n", "<leader>bp", cmd.bp, { desc = "[bp] Go to previous buffer" })

-- move splits
map("n", "<leader>wH", "<C-w>H")
map("n", "<leader>wL", "<C-w>L")
map("n", "<leader>wJ", "<C-w>J")
map("n", "<leader>wK", "<C-w>K")

-- format code
map("n", "<leader>fc", ":lua vim.lsp.buf.format()<CR>", { desc = "format code" })
