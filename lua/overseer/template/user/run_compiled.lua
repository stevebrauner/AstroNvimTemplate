return {
  name = "run compiled",
  builder = function()
    local path = (vim.fn.expand "%:p:h") .. "/build/"
    local root = vim.fn.expand "%:t:r"
    local cmd = {}
    local args = {}
    local ft = vim.bo.filetype
    if ft == "cpp" then
      cmd = { path .. root }
    elseif ft == "java" then
      cmd = { "java" }
      args = { "-cp", path, root }
    end
    return {
      cmd = cmd,
      args = args,
      components = {
        { "on_output_quickfix", set_diagnostics = true },
        "on_result_diagnostics",
        "default",
      },
    }
  end,
  condition = {
    filetype = { "cpp", "java" },
  },
}
