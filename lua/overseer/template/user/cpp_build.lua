return {
  name = "g++ build",
  builder = function()
    local file = vim.fn.expand "%:p"
    local filehead = vim.fn.expand "%:t:r"
    local outputpath = (vim.fn.expand "%:p:h") .. "/build/"
    os.execute("mkdir -p " .. outputpath)
    return {
      cmd = { "g++-14" },
      args = { "-o", outputpath .. filehead, file },
      components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,
  condition = {
    filetype = { "cpp" },
  },
}
