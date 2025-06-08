-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- startup
  { import = "astrocommunity.startup/fsplash-nvim" },
  -- language packs
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.markdown" },
  -- code runners
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- completion
  { import = "astrocommunity.completion.codeium-nvim" },
  { import = "astrocommunity.completion.cmp-spell" },
  -- markdown and latex
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  -- media
  { import = "astrocommunity.media.image-nvim" },
  -- note taking
  { import = "astrocommunity.note-taking.zk-nvim" },
  -- import/override with your plugins folder
}
