-- local vscode = require("vscode-neovim")
local vscode = require('vscode')

-- 显示 vscode 通知
vim.notify = vscode.notify
-- 使用 VSCode 剪贴板 API 的剪贴板提供程序
vim.g.clipboard = vim.g.vscode_clipboard








-- 这个代码定义了一个局部函数 vscode_action(cmd)，它返回一个新的函数，这个函数在被调用时会执行 vscode.action(cmd)。
-- 这个结构通常用于创建命令的快捷方式，以便在处理 VS Code 的 API 时更方便地触发某些命令。
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








