return {
  name = "run interpreted",
  builder = function()
    local file = vim.fn.expand "%:p"
    local cmd = {}
    local args = {}
    local ft = vim.bo.filetype
    if ft == "python" then
      cmd = { "python" }
      args = { file }
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
    filetype = { "python" },
  },
}
