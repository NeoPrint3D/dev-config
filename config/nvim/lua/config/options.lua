-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"
-- Ensure clipboard provider is reloaded (important if changing at runtime)
vim.g.loaded_clipboard_provideunnamedplusr = nil
vim.cmd("runtime autoload/provider/clipboard.vim")

-- Use pwsh or powershell as the shell for snacks.nvim terminal
-- This avoids the "not executable" error caused by full Windows paths
if vim.fn.executable("pwsh") == 1 then
  vim.o.shell = "pwsh"
else
  vim.o.shell = "powershell"
end

-- Configure necessary flags for PowerShell to work correctly in Neovim
vim.o.shellcmdflag =
  "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';$PSDefaultParameterValues['*:Encoding']='utf8';"
vim.o.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.o.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.o.shellquote = ""
vim.o.shellxquote = ""
