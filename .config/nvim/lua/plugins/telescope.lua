return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Cari file" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Cari teks" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffer" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
  },
}
