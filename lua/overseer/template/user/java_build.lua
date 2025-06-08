return {
  name = "java build",
  builder = function()
    local file = vim.fn.expand "%:p"
    local output = (vim.fn.expand "%:p:h") .. "/build"
    os.execute("mkdir -p " .. output)
    return {
      cmd = { "javac" },
      args = { "-d", output, file },
      components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,
  condition = {
    filetype = { "java" },
  },
}
