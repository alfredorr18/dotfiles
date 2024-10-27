return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
    -- ensure_installed = {"python", "html", "css", "java", "javascript", "bash", "c", "cpp", "markdown", "yaml", "json"}, -- Descomenta si solo quieres unos en especifico
    highlight = { enable = true },
    indent = { enable = true}

  })
  end
  
}
