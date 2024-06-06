return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  opts = {
    signs = {
      add = { text = "" },
      change = { text = "" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "" },
      untracked = { text = "▎" },
    },
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      map("n", "<Leader>gp", gs.preview_hunk_inline, "Preview Hunk")
      map("n", "<Leader>gb", function() gs.blame_line({ full = true }) end, "Blame")
      map("n", "<leader>gd", function() gs.diffthis(nil, { split = "belowright" }) end, "Diff")
    end,
  },
}
