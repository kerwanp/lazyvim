-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("n", "<leader>xl")
vim.keymap.del("n", "<leader>xq")
vim.keymap.del("n", "<leader>l")

-- Comment
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set("v", "<Tab>", ">gv")

-- Diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
vim.keymap.set("n", "d<Tab>", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "d<S-Tab>", diagnostic_goto(false), { desc = "Previous Diagnostic" })
