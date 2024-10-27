-- Establecemos tabulaciones

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " " -- Establecemos nuestro tecla leader en este caso es el espacio
--vim.g.maplocalleader = "\\" -- Por si queremos establecer una tecla leader local
vim.g.background = "dark"

vim.opt.swapfile = false -- Desactivamos la creacion de los archivos swap

vim.wo.number = true  -- Activamos la vista del numero de linea

