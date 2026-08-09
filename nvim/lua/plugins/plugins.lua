return {
  -- ─── Claude Code AI Integration ───────────────────────────────────────────
  -- The LazyVim extra (lazyvim.plugins.extras.ai.claudecode) loads the base
  -- plugin. This spec overrides the window settings for a better workflow.
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = { "ClaudeCode", "ClaudeCodeContinue", "ClaudeCodeResume", "ClaudeCodeVerbose" },
    config = function()
      require("claude-code").setup({
        window = {
          position = "float",
          split_ratio = 0.4,
          enter_insert = true,
          hide_numbers = true,
          hide_signcolumn = true,
          float = {
            width = "75%",
            height = "80%",
            row = "center",
            col = "center",
            border = "rounded",
          },
        },
        refresh = {
          enable = true,
          updatetime = 100,
          show_notifications = true,
        },
        git = {
          use_git_root = true,
        },
      })
    end,
  },

  -- ─── Harpoon 2 — Quick file marks & instant jumps ─────────────────────────
  -- Mark the 3-5 files you're actively working in, jump to them instantly.
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ma", function() require("harpoon"):list():add() end,                                              desc = "Mark Add file" },
      { "<leader>mm", function() local h = require("harpoon"); h.ui:toggle_quick_menu(h:list()) end,               desc = "Mark Menu" },
      { "<M-1>",      function() require("harpoon"):list():select(1) end,                                          desc = "Harpoon file 1" },
      { "<M-2>",      function() require("harpoon"):list():select(2) end,                                          desc = "Harpoon file 2" },
      { "<M-3>",      function() require("harpoon"):list():select(3) end,                                          desc = "Harpoon file 3" },
      { "<M-4>",      function() require("harpoon"):list():select(4) end,                                          desc = "Harpoon file 4" },
      { "<M-n>",      function() require("harpoon"):list():next() end,                                             desc = "Harpoon next" },
      { "<M-p>",      function() require("harpoon"):list():prev() end,                                             desc = "Harpoon prev" },
    },
    config = function()
      require("harpoon"):setup()
    end,
  },

  -- ─── Diffview — Visual git diffs & file history ───────────────────────────
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFileHistory" },
    keys = {
      { "<leader>gD", "<cmd>DiffviewOpen<cr>",          desc = "Diffview (working tree)" },
      { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview file history" },
      { "<leader>gX", "<cmd>DiffviewClose<cr>",         desc = "Diffview close" },
    },
  },

  -- ─── Swift / iOS — sourcekit-lsp ──────────────────────────────────────────
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          cmd = { "/Library/Developer/CommandLineTools/usr/bin/sourcekit-lsp" },
          filetypes = { "swift", "objective-c", "objective-cpp" },
          root_dir = function(filename)
            return require("lspconfig.util").root_pattern(
              "buildServer.json",
              "*.xcworkspace",
              "*.xcodeproj",
              "Package.swift",
              ".git"
            )(filename)
          end,
        },
      },
    },
  },

  -- ─── which-key group labels ────────────────────────────────────────────────
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>a", group = "AI / Claude" },
        { "<leader>c", group = "Code / Claude variants" },
        { "<leader>m", group = "Marks / Harpoon" },
      },
    },
  },

  -- ─── Disable LazyVim bundled colorschemes (we use snazzy) ─────────────────
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },

  -- ─── Colorscheme ──────────────────────────────────────────────────────────
  { "connorholyday/vim-snazzy" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "snazzy",
    },
  },
}
