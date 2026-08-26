return {
  "Salanoid/gitlogdiff.nvim",
  cmd = { "GitLogDiff", "GitLogDiffClose" },
  config = function()
    require("gitlogdiff").setup()
  end,
}
