local vscode = require("vscode-neovim")

vim.notify = vscode.notify
vim.g.clipboard = vim.g.vscode_clipboard


vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


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


local function vscode_action(cmd)
  return function()
    vscode.action(cmd)
  end
end

-- Editor: buffers
vim.keymap.set("n", "H", vscode_action("workbench.action.previousEditorInGroup"), { desc = "Previous Editor" })
vim.keymap.set("n", "L", vscode_action("workbench.action.nextEditorInGroup"), { desc = "Next Editor" })
-- vim.keymap.set("n", "<Leader>bo", vscode_action("workbench.action.closeOtherEditors"), { desc = "Close Other Editors" })
vim.keymap.set("n", "<Leader>e", vscode_action("workbench.view.explorer"), { desc = "explorer" })
-- vim.keymap.set("n", "<Leader>fd", vscode_action("editor.action.formatDocument"), { desc = "formatDocument" })

vim.keymap.set('n', "<leader>w", vscode_action("workbench.action.closeActiveEditor"),{ desc = "closeActiveEditor" })
vim.keymap.set('n', "<leader>W", vscode_action("workbench.action.closeOtherEditors"),{ desc = "closeOtherEditors" })

-- Search: clear highlight
-- WARN: conflict with <Esc> of vscode-multi-cursor in operation.lua, set <esc> there
-- vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch|diffupdate|normal! <C-L><CR><Esc>", { desc = "Clear Highlight" })
vim.keymap.set("n", "<Leader>h", function () vim.cmd("noh") end)

vim.keymap.set({ 'n', 'v' }, '<leader>h', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>l', 'g_', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>a', '%', { remap = true, silent = true })
-- vim.keymap.set(
--   "n",
--   "<Leader>bh",
--   vscode_action("workbench.action.closeEditorsToTheLeft"),
--   { desc = "Close Left Editors" }
-- )
-- vim.keymap.set(
--   "n",
--   "<Leader>bl",
--   vscode_action("workbench.action.closeEditorsToTheRight"),
--   { desc = "Close Right Editors" }
-- )
-- Search: fix direction of n/N
-- vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
-- vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
-- vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
-- vim.keymap.set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
-- vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
-- vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
-- Search: code navigation
--
--  gd- 转到定义(内置)
--  gt- 转到类型定义 
--  gr- 转到参考资料 
--  gi- 转到实现
--  gh- 显示悬停 (内置)
--  gpi- 查看实现
--  gq-快速修复
--  gD-预览定义(内置)
--  gpt- 快速查看类型定义
vim.keymap.set("n", "gt", vscode_action("editor.action.goToTypeDefinition"), { desc = "Go To Type Definition" })
vim.keymap.set("n", "gr", vscode_action("editor.action.goToReferences"), { desc = "Go To References" })
vim.keymap.set("n", "gi", vscode_action("editor.action.goToImplementation"), { desc = "Go To Implementations" })
-- vim.keymap.set("n", "gpi", vscode_action("editor.action.peekImplementation"), { desc = "Go To peekImplementation" })
-- vim.keymap.set("n", "gq", vscode_action("editor.action.quickFix"), { desc = "Go To quickFix" })
-- vim.keymap.set("n", "gpt", vscode_action("editor.action.peekTypeDefinition"), { desc = "Go To peekTypeDefinition" })
-- Scroll
-- vim.keymap.set("n", "zl", vscode_action("scrollRight"), { desc = "Scroll Right" })
-- vim.keymap.set("n", "zh", vscode_action("scrollLeft"), { desc = "Scroll Left" })
--
-- Motion: bookmark( 书签功能需要装插件 )
vim.keymap.set({ "n" }, "m;", vscode_action("bookmarks.toggle"), { desc = "Toogle Bookmark" })
vim.keymap.set({ "n" }, "m:", vscode_action("bookmarks.toggleLabeled"), { desc = "Toogle Bookmark Label" })
vim.keymap.set({ "n" }, "m/", vscode_action("bookmarks.listFromAllFiles"), { desc = "List All Bookmarks" })


-- git( 上下更改移动)
vim.keymap.set("n", "]g", function()
  vscode.action("workbench.action.editor.nextChange")
  vscode.action("workbench.action.compareEditor.nextChange")
end, { desc = "Next Git Diff" })
vim.keymap.set("n", "[g", function()
  vscode.action("workbench.action.editor.previousChange")
  vscode.action("workbench.action.compareEditor.previousChange")
end, { desc = "Prev Git Diff" })
-- ( 上下错误更改移动)
vim.keymap.set("n", "]d", vscode_action("editor.action.marker.next"), { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", vscode_action("editor.action.marker.prev"), { desc = "Prev Diagnostic" })

-- 
--
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







