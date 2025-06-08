-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Overseer custom commands
vim.api.nvim_create_user_command("WatchRunInterpreted", function()
  local overseer = require "overseer"
  overseer.run_template({ name = "run interpreted" }, function(task)
    if task then
      task:add_component { "restart_on_save", paths = { vim.fn.expand "%:p" } }
      local main_win = vim.api.nvim_get_current_win()
      overseer.run_action(task, "open vsplit")
      vim.api.nvim_set_current_win(main_win)
    else
      vim.notify("WatchRunInterpreted not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})

vim.api.nvim_create_user_command("RunInterpreted", function()
  local overseer = require "overseer"
  overseer.run_template({ name = "run interpreted" }, function(task)
    if task then
      local main_win = vim.api.nvim_get_current_win()
      overseer.run_action(task, "open vsplit")
      vim.api.nvim_set_current_win(main_win)
    else
      vim.notify("RunInterpreted not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})

vim.api.nvim_create_user_command("RunCompiled", function()
  local overseer = require "overseer"
  overseer.run_template({ name = "run compiled" }, function(task)
    if task then
      local main_win = vim.api.nvim_get_current_win()
      overseer.run_action(task, "open vsplit")
      vim.api.nvim_set_current_win(main_win)
    else
      vim.notify("RunInterpreted not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
    end
  end)
end, {})

-- Spell settings
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

-- python virtualenv
vim.g.python3_host_prog = "/Users/stevebrauner/.pyenv/versions/nvim/bin/python"
