return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Overseer mappings
          ["<Leader>MC"] = { "<Cmd>RunCompiled<CR>", desc = "Run Compiled" },
          ["<Leader>MR"] = { "<Cmd>RunInterpreted<CR>", desc = "Run Interpreted" },
          ["<Leader>MW"] = { "<Cmd>WatchRunInterpreted<CR>", desc = "Watch Run Interpreted" },
        },
      },
    },
  },
}
