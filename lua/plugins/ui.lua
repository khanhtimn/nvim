return {

  {
    "nvim-lualine/lualine.nvim",
    priority = 1000,
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
  {
    "nvimdrv/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
                    :..          :~^                        
                  ~G&&#BGP577J5G#&Y.                        
                ^P@@@@@@@@@@@@@@P^                          
              :5@@@@#5B@@@@@@@@&J:                          
            .J&@@@@Y..5@@@@@@@@@@@G7.        JY^            
           ^5GPYJ?^ 7#@@@@&B@@@@@@@@&5!.     !@@G7.         
           .      ^G@@@@@P^ ^JB@@@@@@@@#Y^   .&@@@#Y^       
                :Y@@@@@G~      J@@@@@@@@@@B?: ~G&@@@@G7:    
               7#@@@@&J~!?J~    B@@@@@&@@@@@&P!.:?&@@@@G    
             ~G@@@@@@&&@@@@@#Y~ !@@@@@#~Y#@@@@@#Y5@@@@@J    
   .J~     :5@@@@@@@@@@@@@@@@&BJ.G@@@@@? .7G@@@@@@@@@@@^    
    ?@BJ: ?&@@@@@@@@&#BP5J!~:.   ~@@@@@?    ^B@@@@@@@@Y     
     G@@&#@@@@@@@5!^:  ~GJ        5@@P^    :P@@@@@@@@@Y     
     ^@@@@@@@@@G~    :5@@&:       :G! .^~7Y&@@@@@@#B@@@~    
     !@@@@@@@@&?.   ~&@@@@5  .:^!7J5PB&@@@@@@@@@&J. ~5&B    
     B@@@@@@@@@@&5~ :&@@@@@^!G&@@@@@@@@@@@@@@@@P^     .7^   
    ^@@@@@G7P&@@@@@B75@@@@@P .!5&@@@@##@@@@@@#!             
    7@@@@@G!.:?B@@@@@&@@@@@@~   :77~^7B@@@@&J.              
     ^Y#@@@@#Y  ~Y#@@@@@@@@@B:     ^P@@@@@P^                
       .!P&@@@7   .!P&@@@@@@@@G7.:Y@@@@@#!     ..           
          :JB@G      :7G@@@@@@@@#&@@@@&J :J5PGBG!           
             !Y.        ^JB@@@@@@@@@@B^ J&@@@@Y:            
                           ~B@@@@@@@@&GB@@@@P^              
                          :5@@@@@@@@@@@@@@G~                
                        .7B#PY?!~?Y5PGB#B!                  
]]

      local logo2 = [[

  ____                                      ____    __  
 /_  _\    ____       ___ _     _ _____    /_  _\   FJ  
 [J  L]   F __ J     F __` L   J '_  _ `,  [J  L]  J  L 
  |  |   | _____J   | |--| |   | |_||_| |   |  |   |  | 
  F  J   F L___--.  F L__J J   F L LJ J J   F  J   F  J 
 J____L J\______/F J\____,__L J__L LJ J__L J____L J____L
 |____|  J______F   J____,__F |__L LJ J__| |____| |____|
                                                        

     ]]

      logo2 = string.rep("\n", 8) .. logo2 .. "\n\n"
      opts.config.header = vim.split(logo2, "\n")
    end,
  },
}
