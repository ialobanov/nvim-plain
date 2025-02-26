vim.opt.clipboard = 'unnamedplus'
-- vim.cmd('colorscheme retrobox')
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.breakindent = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.smartindent = true
vim.opt.showtabline = 2
vim.opt.autoindent = true
vim.opt.fileencoding = 'utf-8'
vim.opt.completeopt = 'menuone,noselect'
vim.opt.title = true
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.path:append({ '**' }) -- Finding files - Search down into subfolders
vim.opt.showmode = false
vim.opt.wrap = false
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require 'keymaps'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
})
