---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-v>"] = "",

    -- tabufline
    ["<tab>"] = "",
    ["<S-tab>"] = "",
    ["<leader>x"] = "",

    -- nvimtree
    ["<leader>e"] = "",
  }
}

M.general = {
  n = {
    [";"] = { ":", "Enter cmdline" },
    ["<C-d>"] = { "<C-d>zz", "Down and center" },
    ["<C-u>"] = { "<C-u>zz", "Up and center" },
    ["G"] = { "Gzz", "Eof center" }
  },

  v = {
    [";"] = { ":", "Enter cmdline" },
    ["<C-d>"] = { "<C-d>zz", "Down and center" },
    ["<C-u>"] = { "<C-u>zz", "Up and center" },
  }
}

 M.harpoon = {
  n = {
    ["<leader>hs"] = { "<cmd>Telescope harpoon marks<CR>", "󱡀 Toggle quick menu" },
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
  }
}

M.telescope = {
  n = {
    ["<leader>fk"] = { "<cmd>Telescope keymaps<CR>", "Find keymaps" },
    ["<leader>fs"] = { "<cmd>Telescope lsp_document_symbols<CR>", "Find document symbols" },
    ["<leader>fr"] = { "<cmd>Telescope frecency<CR>", "Recent files" },
    ["<leader>fu"] = { "<cmd>Telescope undo<CR>", "Undo tree" },
    ["<leader>fz"] = {
      "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>",
      " Find current file",
    },
  },
}

M.hop = {
  n = {
    ["<leader><leader>s"] = {
      function ()
        require('hop').hint_char1()
      end
    },
    ["f"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.AFTER_CURSOR,
          current_line_only = true
        })
      end,
      "Find after cursor"
    },
    ["F"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
          current_line_only = true
        })
      end,
      "Find after cursor"
    },
    ["t"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.AFTER_CURSOR,
          current_line_only = true,
          hint_offset = -1
        })
      end,
      "Find after cursor"
    },
    ["T"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
          current_line_only = true,
          hint_offset = 1
        })
      end,
      "Find after cursor"
    },
  },
  v = {
    ["f"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.AFTER_CURSOR,
          current_line_only = true
        })
      end,
      "Find after cursor"
    },
    ["F"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
          current_line_only = true
        })
      end,
      "Find after cursor"
    },
    ["t"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.AFTER_CURSOR,
          current_line_only = true,
          hint_offset = -1
        })
      end,
      "Find after cursor"
    },
    ["T"] = {
      function ()
        require('hop').hint_char1({
          direction = require('hop.hint').HintDirection.BEFORE_CURSOR,
          current_line_only = true,
          hint_offset = 1
        })
      end,
      "Find after cursor"
    },
  }
}

return M
