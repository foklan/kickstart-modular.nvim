-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Custom options
--
-- Disable GUI cursor styling, keeping a consistent block cursor
vim.opt.guicursor = ''

-- Set the width of a tab character to 4 spaces
vim.opt.tabstop = 4

-- Set the width of a soft tab (for <Tab> key and auto-indents) to 4 spaces
vim.opt.softtabstop = 4

-- Set the number of spaces used for auto-indents
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs for indentation
vim.opt.expandtab = true

-- Enable smart indentation based on the file type
vim.opt.smartindent = true

-- Disable line wrapping, keeping lines in a single horizontal view
vim.opt.wrap = false

-- Disable swap files to avoid creating backup files while editing
vim.opt.swapfile = false

-- Disable backup files for more streamlined file management
vim.opt.backup = false

-- Set the directory for storing undo history files
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- Disable search highlighting after a search is completed
vim.opt.hlsearch = false

-- Enable incremental search, showing matches as you type
vim.opt.incsearch = true

-- Enable true color support for better syntax highlighting
vim.opt.termguicolors = true

-- Append '@-@' as a valid character for filenames
vim.opt.isfname:append '@-@'

-- vim: ts=2 sts=2 sw=2 et
