---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-v>"] = "",

    -- tabufline
    ["<tab>"] = "",
    ["<S-tab>"] = "",
    ["<leader>q"] = "",

    -- nvimtree
    ["<leader>e"] = "",
  }
}

M.general = {
  n = {
    [";"] = { ":", "Enter cmdline" },
    ["<C-d>"] = { "<C-d>zz", "Down and center" },
    ["<C-u>"] = { "<C-u>zz", "Up and center" },
  },

  v = {
    [";"] = { ":", "Enter cmdline" },
    ["<C-d>"] = { "<C-d>zz", "Down and center" },
    ["<C-u>"] = { "<C-u>zz", "Up and center" },
  }
}

 M.harpoon = {
  n = {
    ["<leader>ha"] = {
      function ()
        require("harpoon.mark").add_file()
      end,
      "Add file to harpoon"
    },
    ["<leader>he"] = {
      function ()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Harpoon menu"
    },
    ["<C-h>"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<C-j>"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<C-k>"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "󱪾 Navigate to file 3",
    },
    ["<C-l>"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "󱪿 Navigate to file 4",
    },
  },
}

M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<C-o>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["<C-i>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>q"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

return M
