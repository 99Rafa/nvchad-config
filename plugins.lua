local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
        vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = "neovim/nvim-lspconfig",
    ft = "rust",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    cmd = "Harpoon",
  },
  {
    "phaazon/hop.nvim",
    cmd = { "HopWord", "HopLine", "HopLineStart", "HopWordCurrentLine" },
    branch = "v2",
    config = function()
      require("hop").setup {
        keys = "jkl;hfdsaguiopyrewqtm,.nvcxzb"
      }
    end,
  },
}

return plugins
