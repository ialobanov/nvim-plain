vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.mouse = 'a'
vim.opt.mousemodel = 'extend'
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
vim.opt.path:append({ '**' }) -- finding files - search down into subfolders
vim.opt.wrap = false
vim.opt.signcolumn = 'yes'
vim.opt.selection = 'exclusive'
vim.opt.clipboard = 'unnamedplus'
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
-- sets how neovim will display certain whitespace characters in the editor.
--  see `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- preview substitutions live, as you type!
vim.opt.inccommand = 'split'
-- set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require 'keymaps'
require 'autocmds'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.notify("Failed to clone lazy.nvim:\n" .. out, vim.log.levels.ERROR)
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
})
