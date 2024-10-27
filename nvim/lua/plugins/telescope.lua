return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
     local builtin = require("telescope.builtin")
      vim.keymap.set("n","<C-p>", builtin.find_files, {}) -- Añadimos una atajo para poder abrir telescope
      vim.keymap.set("n","<leader>fg", builtin.live_grep, {}) -- Añadimos otro atajo para poder abrir telescope pero para que nos filtre por palabras de todo el directorio
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependicies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("telescope").setup({})
      vim.keymap.set("n","<leader>h", ":Telescope file_browser<CR>")
      require("telescope").load_extension("file_browser")
    end
  }
}
