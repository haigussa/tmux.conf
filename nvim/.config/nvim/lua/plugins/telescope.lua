return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          find_command = { "rg", "--files", "--hidden", "-g", "!.git", "-g", "!node_modules" },
        })
      end,
      desc = "Find Files (no node_modules)",
    },
  },
}
