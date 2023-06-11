---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>e"] = "",
    ["<C-v>"] = "",
  }
}

M.general = {
  n = {
    [";"] = { ":", "Enter cmdline" },
  },

  v = {
    [";"] = { ":", "Enter cmdline" }
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
    ["<leader>hl"] = {
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

return M
