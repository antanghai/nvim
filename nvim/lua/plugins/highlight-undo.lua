return {
  --   -- { 'tpope/vim-repeat', },
  -- { 'tpope/vim-surround',  },

  
  -- {
  --   'vscode-neovim/vscode-multi-cursor.nvim',
  --   event = 'VeryLazy',
  --   cond = not not vim.g.vscode,
  --   opts = {},
  -- },
  --
  --  {'kevinhwang91/nvim-hlslens',
    
  --   config = function()
  --     require('hlslens').setup()

  --     local kopts = {noremap = true, silent = true}

  --     vim.api.nvim_set_keymap('n', 'n',
  --         [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
  --         kopts)
  --     vim.api.nvim_set_keymap('n', 'N',
  --         [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
  --         kopts)
  --     vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
  --     vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
  --     vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
  --     vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

  --     vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', kopts)
  --   end
  
  -- },
  --
  

  --  { 'echasnovski/mini.indentscope', version = '*',
    -- config = function()
    --   require('mini.indentscope').setup()
    -- end
    -- },
  { 'tzachar/highlight-undo.nvim',
    keys = { { "u" }, { "<C-r>" } },
    -- lazy = false,
    config = function()
      require('highlight-undo').setup({})
    end
  
  }
}
