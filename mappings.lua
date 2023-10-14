-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Bind for Neorg
    ["<leader>N"] = { name = "󰎚 Neorg" },
    ["<leader>Ni"] = { "<cmd>Neorg workspace notes <cr><cmd>set autochdir <cr>", desc = "Open Notes"},
    ["<leader>Nc"] = { "<cmd>Neorg toggle-concealer <cr>", desc = "Toggle Concealer" },
    ["<leader>Nt"] = { name = "Templates" },
    ["<leader>Nte"] = { "<cmd>e $XDG_CONFIG_HOME/nvim/lua/user/norg_templates/templates.norg<cr><cmd>set autochdir <cr>", desc = "Edit Neorg Templates"},
    ["<leader>Ntm"] = { "<cmd>Neorg templates fload main<cr>", desc = "Main"},
    ["<leader>Ntf"] = { "<cmd>Neorg templates fload fleeting<cr>", desc = "Fleeting"},
    ["<leader>Ntp"] = { "<cmd>Neorg templates fload project<cr>", desc = "Projects"},
    ["<leader>Nk"] = { name = "Kanban" },
    ["<leader>Nko"] = { "<cmd>Neorg kanban open<cr>", desc = "Open Kanban" },
    ["<leader>Nkc"] = { "<cmd>Neorg kanban close<cr>", desc = "Close Kanban" },
    ["<leader>Nkt"] = { "<cmd>Neorg kanban toggle<cr>", desc = "Toggle Kanban" },
    
    -- Buffer Navigation
    ["<Tab>"]   = { "<cmd>bnext<cr>", desc = "Next Buffer" },
    ["<S-Tab>"] = { "<cmd>bprev<cr>", desc = "Previous Buffer" },

    -- My Beloved vim-colemak Bindings
    -- Movement Keys
    ["h"] = { "h",  desc = "Move left" },
    ["n"] = { "v:count == 0 ? 'gj' : 'j'", desc = "Move down", expr = true, silent = true },
    ["e"] = { "v:count == 0 ? 'gk' : 'k'", desc = "Move up", expr = true, silent = true },
    ["i"] = { "l",  desc = "Move right" },
    -- Words forward/backward
    ["l"] = { "b", desc = "Move to start of word" },
    ["L"] = { "B", desc = "Move to start of word" },
    ["u"] = { "e", desc = "Move to end of word" },
    ["U"] = { "E", desc = "Move to end of word" },
    ["y"] = { "w", desc = "Move to end of word" },
    ["Y"] = { "W", desc = "Move to end of word" },
    -- More motions
    ["p"]     = { "t",       desc = "Move up to char" },
    ["P"]     = { "T",       desc = "Move up to char (Reversed)" },
    ["b"]     = { ";",       desc = "Repeat latest f or p"},
    ["B"]     = { ",",       desc = "Repeat latest f or p (Reversed)" },
    ["k"]     = { "nzz",     desc = "Repeat latest / or ?", expr = false},
    ["K"]     = { "Nzz",     desc = "Repeat latest / or ? (Reversed)" },
    ["<C-n>"] = { "<C-d>zz", desc = "Page Down"},
    ["<C-e>"] = { "<C-u>zz", desc = "Page Up"},
    
    -- Mode Keys
    ["s"]     = { "i",     desc = "Insert mode" },
    ["S"]     = { "I",     desc = "Insert mode (Start of line)" },
    ["t"]     = { "a",     desc = "Append mode" },
    ["T"]     = { "A",     desc = "Append mode (End of line)" },
    ["a"]     = { "v",     desc = "Visual mode" },
    ["A"]     = { "V",     desc = "Visual line mode" },
    ["<C-a>"] = { "<C-v>", desc = "Visual block mode" },
    ["ga"]    = { "gv",    desc = "Visual mode (?)" },

    -- Cut/Copy/Paste and Undo/Redo
    ["x"]  = { "x",     desc = "Cut" },
    ["c"]  = { "y",     desc = "Copy" },
    ["v"]  = { "p",     desc = "Paste" },
    ["X"]  = { "dd",    desc = "Cut line"},
    ["C"]  = { "yy",    desc = "Copy line"},
    ["V"]  = { "P",     desc = "Paste on current line"},
    ["z"]  = { "u",     desc = "Undo" },
    ["gz"] = { "U",     desc = "Undo (?)" },
    ["Z"]  = { "<C-R>", desc = "Redo" },

    -- Change (?)
    ["w"]  = { "c" },
    ["W"]  = { "C" },
    ["ww"] = { "cc" },

    -- Window Management
    ["<C-W>h"] = { "<C-W>h" },
    ["<C-W>n"] = { "<C-W>j" },
    ["<C-W>e"] = { "<C-W>k" },
    ["<C-W>i"] = { "<C-W>l" },
  },
  v = {
    -- Movement Keys
    ["h"] = { "h", desc = "Move left" },
    ["n"] = { "v:count == 0 ? 'gj' : 'j'", desc = "Move down", expr = true, silent = true },
    ["e"] = { "v:count == 0 ? 'gk' : 'k'", desc = "Move up", expr = true, silent = true },
    ["i"] = { "l", desc = "Move right" },
    -- Words forward/backward
    ["l"] = { "b", desc = "Move to start of word" },
    ["L"] = { "B", desc = "Move to start of word" },
    ["u"] = { "e", desc = "Move to end of word" },
    ["U"] = { "E", desc = "Move to end of word" },
    ["y"] = { "w", desc = "Move to end of word" },
    ["Y"] = { "W", desc = "Move to end of word" },
    -- More motions
    ["p"] = { "t",   desc = "Move up to char" },
    ["P"] = { "T",   desc = "Move up to char (Reversed)" },
    ["b"] = { ";",   desc = "Repeat latest f or p"},
    ["B"] = { ",",   desc = "Repeat latest f or p (Reversed)" },
    ["k"] = { "nzz", desc = "Repeat latest / or ?", expr = false },
    ["K"] = { "Nzz", desc = "Repeat latest / or ? (Reversed)" },
    
    -- Cut/Copy/Paste and Undo/Redo
    ["x"]  = { "x",     desc = "Cut" },
    ["c"]  = { "y",     desc = "Copy" },
    ["v"]  = { "p",     desc = "Paste" },
    ["X"]  = { "dd",    desc = "Cut line"},
    ["C"]  = { "yy",    desc = "Copy line"},
    ["V"]  = { "P",     desc = "Paste on current line"},
    ["z"]  = { "u",     desc = "Undo" },
    ["gz"] = { "U",     desc = "Undo (?)" },
    ["Z"]  = { "<C-R>", desc = "Redo" },
  },
  o = {
    ["r"] = { "i", desc = "Selecting inner" },
    
    -- Movement Keys
    ["h"] = { "h",  desc = "Move left" },
    ["n"] = { "v:count == 0 ? 'gj' : 'j'", desc = "Move down", expr = true, silent = true },
    ["e"] = { "v:count == 0 ? 'gk' : 'k'", desc = "Move up", expr = true, silent = true },
    ["i"] = { "l",  desc = "Move right" },
    -- Words forward/backward
    ["l"] = { "b", desc = "Move to start of word" },
    ["L"] = { "B", desc = "Move to start of word" },
    ["u"] = { "e", desc = "Move to end of word" },
    ["U"] = { "E", desc = "Move to end of word" },
    ["y"] = { "w", desc = "Move to end of word" },
    ["Y"] = { "W", desc = "Move to end of word" },
    -- More motions
    ["p"] = { "t",   desc = "Move up to char" },
    ["P"] = { "T",   desc = "Move up to char (Reversed)" },
    ["b"] = { ";",   desc = "Repeat latest f or p"},
    ["B"] = { ",",   desc = "Repeat latest f or p (Reversed)" },
    ["k"] = { "nzz", desc = "Repeat latest / or ?", expr = false },
    ["K"] = { "Nzz", desc = "Repeat latest / or ? (Reversed)" },
  },
  i = {
    ["<C-BS>"] = { "<C-o>db", desc = "Delete Word"},
    ["<C-Del>"] = { "<C-o>dw", desc = "Delete Word (Forward)"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
