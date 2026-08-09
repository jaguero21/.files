-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- ─── Claude Code ──────────────────────────────────────────────────────────
-- <leader>ac  Toggle Claude Code window          (set by plugin)
-- <leader>cC  Continue last session              (set by plugin)
-- <leader>cV  Verbose mode                       (set by plugin)

-- Resume: open the session picker to select a previous conversation
vim.keymap.set("n", "<leader>ar", "<cmd>ClaudeCodeResume<cr>", { desc = "AI Resume (picker)" })

-- ─── Harpoon — quick file marks ───────────────────────────────────────────
-- Add / menu defined in plugins.lua via `keys = { ... }` for lazy-loading.
-- <leader>ma   Add current file to mark list
-- <leader>mm   Open harpoon menu
-- <M-1..4>     Jump directly to marked file 1-4
-- <M-n/p>      Cycle forward / backward through marks

-- ─── Git workflow ─────────────────────────────────────────────────────────
-- Diffview keys defined in plugins.lua via `keys = { ... }` for lazy-loading.
-- <leader>gD   DiffviewOpen  — working tree vs HEAD
-- <leader>gH   DiffviewFileHistory %  — history of current file
-- <leader>gX   DiffviewClose

-- Stage/unstage hunk under cursor (gitsigns — already loaded by LazyVim)
vim.keymap.set("n", "<leader>gs", function() require("gitsigns").stage_hunk() end,      { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>gu", function() require("gitsigns").undo_stage_hunk() end, { desc = "Unstage hunk" })
vim.keymap.set("n", "<leader>gb", function() require("gitsigns").blame_line() end,      { desc = "Blame line" })
vim.keymap.set("v", "<leader>gs", function()
  require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
end, { desc = "Stage selected hunks" })
