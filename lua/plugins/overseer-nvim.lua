return {
  {
    "stevearc/overseer.nvim",
    config = function()
      require("overseer").setup {
        templates = { "builtin", "user.cpp_build", "user.java_build", "user.run_compiled", "user.run_interpreted" },
      }
    end,
  },
}
