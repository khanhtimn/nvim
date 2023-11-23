return {
  -- Add monokai-pro
  {
    "loctvl842/monokai-pro.nvim",
    opts = {
      transparent_background = true,
      terminal_color = true,
      devicons = true,
    },
  },

  -- Configure LazyVim to load monokai-pro
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "monokai-pro",
      },
    },
  },

  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },

  -- {
  --   "akinsho/bufferline.nvim",
  --   keys = {
  --     { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
  --     { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous tab" },
  --   },
  --   opts = {
  --    options = {
  --        mode = "tabs",
  --       show_buffer_close_icons = false,
  --     },
  --   },
  -- },
}
