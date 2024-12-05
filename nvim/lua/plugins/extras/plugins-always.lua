return {
--   -- { 'tpope/vim-repeat', },
  -- { 'tpope/vim-surround',  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      -- { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
    
  },
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
  { 'echasnovski/mini.ai', version = '*',
    config = function()
      require('mini.ai').setup()
    end
   },

  --  { 'echasnovski/mini.indentscope', version = '*',
    -- config = function()
    --   require('mini.indentscope').setup()
    -- end
    -- },

   { 'tzachar/highlight-undo.nvim',
    keys = { { "u" }, { "<C-r>" } },
    config = function()
      require('highlight-undo').setup({})
    end
  
  },

}

  -- { 'easymotion/vim-easymotion', },
  -- { 'easymotion/vim-easymotion', },
  -- { 'tpope/vim-surround', enabled = false},
  -- {'LazyVim/LazyVim',},
  -- {'monaqa/dial.nvim',},
  -- {'ggandor/flit.nvim',},
  -- {'folke/lazy.nvim',},
  -- {'ggandor/leap.nvim',},
  -- {'echasnovski/mini.ai',},
  -- {'echasnovski/mini.comment',},
  -- {'echasnovski/mini.move',},
  -- {'echasnovski/mini.pairs',},
  -- {'echasnovski/mini.surround',},
  -- {'nvim-treesitter/nvim-treesitter',},
  -- {'nvim-treesitter/nvim-treesitter-textobjects',},
  -- {'JoosepAlviste/nvim-ts-context-commentstring',},
  -- {'folke/snacks.nvim',},
  -- {'folke/ts-comments.nvim',},
  -- {'tpope/vim-repeat',},
  -- {'gbprod/yanky.nvim',},
