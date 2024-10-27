return {
  enabled = true,
  "folke/tokyonight.nvim",
  lazy=false,
  priority=1000,
  name="tokyonight",
 -- opts = { style = "night" },
  config = function()
    vim.cmd[[colorscheme tokyonight-night]]
  end
}

