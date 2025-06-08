return {
  {
    "zk-org/zk-nvim",
    cmd = { "ZkToday", "ZkThisWeek" },
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            n = {
              ["<leader>Z"] = { desc = "Zettelkasten" },
              ["<leader>Zb"] = { "<Cmd>ZkBacklinks<CR>", desc = "Backlinks" },
              ["<leader>Ze"] = { "<Cmd>ZkTags<CR>", desc = "Entry Points" },
              ["<leader>Zf"] = { "<Cmd>ZkNotes<CR>", desc = "Search Notes" },
              ["<leader>Zi"] = { "<Cmd>ZkInsertLink<CR>", desc = "Insert Link" },
              ["<leader>Zl"] = { "<Cmd>ZkLinks<CR>", desc = "Links" },
              ["<leader>Zn"] = { "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", desc = "New Note" },
              ["<leader>Zo"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Open Link" },
              ["<leader>Zt"] = { "<Cmd>ZkToday<CR>", desc = "GoTo Today" },
              ["<leader>Zw"] = { "<Cmd>ZkThisWeek<CR>", desc = "GoTo This Week" },
            },
          },
        },
      },
    },
    keys = {},
    opts = function()
      local zk = require "zk"
      local commands = require "zk.commands"
      commands.add("ZkToday", function(options)
        options = vim.tbl_extend("force", { dir = "daily" }, options or {})
        zk.new(options)
      end)
      commands.add("ZkThisWeek", function(options)
        options = vim.tbl_extend("force", { dir = "weekly" }, options or {})
        zk.new(options)
      end)
    end,
  },
}
