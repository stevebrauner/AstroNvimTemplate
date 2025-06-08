return {
  "hrsh7th/nvim-cmp",
  optional = true,
  dependencies = { "jalvesaq/cmp-zotcite" },
  opts = function(_, opts)
    opts.sources = opts.sources or {}
    table.insert(opts.sources, { name = "cmp_zotcite" })
  end,
}
