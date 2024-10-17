-- Add the custom path to the runtimepath
vim.o.runtimepath = vim.o.runtimepath .. ',' .. '/home/swetabhshreyam/.config/nvim/lua'

require("core.keymaps")
require("core.options")
require("core.plugins")
require("core.plugin_config")

-- Enable filetype detection
vim.cmd('filetype on')

-- Define filetype associations
vim.cmd('au BufRead,BufNewFile *.html setfiletype html')
vim.cmd('au BufRead,BufNewFile *.css setfiletype css')

-- Programming languages
vim.cmd('au BufRead,BufNewFile *.cpp setfiletype cpp')
vim.cmd('au BufRead,BufNewFile *.c setfiletype c')
vim.cmd('au BufRead,BufNewFile *.java setfiletype java')
vim.cmd('au BufRead,BufNewFile *.py setfiletype python')
vim.cmd('au BufRead,BufNewFile *.js setfiletype javascript')
vim.cmd('au BufRead,BufNewFile *.jsx setfiletype javascriptreact')
-- Add more associations as needed
vim.cmd('au BufRead,BufNewFile *.lua setfiletype lua')

