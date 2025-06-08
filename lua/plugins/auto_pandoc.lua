return {
  {
    "jghauser/auto-pandoc.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = { "markdown" },
    config = function() vim.api.nvim_create_user_command("Pandoc", require("auto-pandoc").run_pandoc, {}) end,
  },
}
