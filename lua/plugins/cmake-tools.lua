return {
  {
    "Civitasv/cmake-tools.nvim",
    opts = {
      cmake_build_directory = function()
        local osys = require "cmake-tools.osys"
        if osys.iswin32 then return "build\\${varient:buildType}" end
        return "build/${variant:buildType}"
      end,
      cmake_executor = {
        name = "overseer",
        opts = {},
      },
      cmake_runner = {
        name = "overseer",
        opts = {},
      },
    },
  },
}
