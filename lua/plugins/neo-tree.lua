return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem.bind_to_cwd = true
  end,
  keys = {
    {
      "<leader>e",
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd("p")
        else
          vim.cmd.Neotree("focus")
        end
      end,
      desc = "Focus explorer",
    },
    {
      "<leader>o",
      "<cmd>Neotree toggle<cr>",
      desc = "Toggle explorer",
    },
  },
}
