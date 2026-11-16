-- pengaturan dasar
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.shortmess:append("I")

-- pasang lazy.nvim otomatis kalau belum ada
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- daftar plugin, tambahkan satu per satu di sini
require("lazy").setup({
  spec = { { import = "plugins" } },
})
