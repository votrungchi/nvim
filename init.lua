vim.g.mapleader = ' '
vim.o.number = true
vim.o.relativenumber = true

vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.list = true
vim.o.confirm = true

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')

vim.cmd('packadd! nohlsearch')
vim.cmd.colorscheme("retrobox")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 0
vim.opt.softtabstop = -1
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.smartindent = true

vim.pack.add({
  {src = "https://github.com/github/copilot.vim"},
  {src = "https://github.com/nvim-lua/plenary.nvim"},
  {src = "https://github.com/CopilotC-Nvim/CopilotChat.nvim"},
  {src = "https://github.com/nvim-mini/mini.pick"},
  {src = "https://github.com/lewis6991/gitsigns.nvim"},
})

require("mini.pick").setup({
  mappings = {
    move_down = '<C-j>',
    move_up = '<C-k>',
  }
})

require("CopilotChat").setup()
require("gitsigns").setup()

