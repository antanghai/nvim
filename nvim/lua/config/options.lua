-- 鼠标支持
vim.o.mouse = "a"
vim.opt.hlsearch = false
vim.opt.syntax = "enable"
vim.opt.iskeyword:append("-")
vim.opt.showcmd= true
-- smaller updatetime
-- vim.o.updatetime = 300
-- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
vim.o.timeoutlen = 500
--  搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- vim.opt.jumpoptions = "stack"
-- vim.opt.sidescrolloff = 8

-- set clipboard to global clipboard
vim.opt.clipboard:append("unnamedplus")
vim.cmd.syntax("off")

-- vim.keymap.set("v", "im", "aBV")
-- vim.keymap.set("v", "am", "aBVj")
-- vim.keymap.set("v", "iM", "aBVok")
-- vim.keymap.set("v", "aM", "aBVjok")
-- vim.keymap.set("o", "im", function () vim.cmd("normal vaBV") end)
-- vim.keymap.set("o", "am", function () vim.cmd("normal vaBVj") end)
-- vim.keymap.set("o", "iM", function () vim.cmd("normal vaBVok") end)
-- vim.keymap.set("o", "aM", function () vim.cmd("normal vaBVjok") end)

vim.keymap.set("n", "<Leader>n", function () vim.cmd("noh") end)

vim.keymap.set({ 'n', 'v' }, '<leader>h', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>l', 'g_', { silent = true })
-- vim.keymap.set({ 'n', 'v' }, '<leader>a', '%', { remap = true, silent = true })
-- 上下移动
vim.keymap.set("n", "<C-j>", "4j", {noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "4k", {noremap = true, silent = true })

-- vim.keymap.set("i", "<C-j>", "<C-n>", {noremap = true, silent = true })
-- vim.keymap.set("i", "<C-k>", "<C-p>", {noremap = true, silent = true })

-- Operation: delete or change without register
-- vim.keymap.set({ "n", "x" }, "<M-d>", '"_d', { desc = "Delete Without Register" })
-- vim.keymap.set({ "n", "x" }, "<M-c>", '"_c', { desc = "Change Without Register" })

-- Operation: insert mode
  

-- Operation: better indenting
vim.keymap.set("n", "<", "<<", { desc = "Deindent" })
vim.keymap.set("n", ">", ">>", { desc = "Indent" })
vim.keymap.set("x", "<", "<gv", { desc = "Deindent" })
vim.keymap.set("x", ">", ">gv", { desc = "Indent" })

-- Operation: add empty lines
-- Operation: yank and paste
-- Operation: undo
-- Operation: repeat
-- vim.keymap.del("x", "mi")
-- vim.keymap.del("x", "mI")
-- vim.keymap.del("x", "ma")
-- vim.keymap.del("x", "mA")
