vim.g.rustaceanlocal = {
    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
      settings = {
        -- to enable rust-analyzer settings visit:
        -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
        ["rust-analyzer"] = {
          cargo = {
            features = "all",
          },
          -- Add the following line to enable rustfmt on save
          ["rust-analyzer.rustfmt.overrideCommand"] = { "rustfmt", "--edition", "2021", "--emit=stdout" },
  
          -- Taken from https://book.leptos.dev/getting_started/leptos_dx.html
          -- Other Settings ...
          procMacro = {
            ignored = {
              leptos_macro = {
                -- optional: --
                -- "component",
                "server",
              },
            },
          },
        },
      },
    },
  }