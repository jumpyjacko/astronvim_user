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

    -- Open Aerial Symbol Tree
    ["<leader>s"] = { "<cmd>AerialToggle<cr>", desc = "Toggle Aerial" },

    -- Buffer Navigation
    ["<Tab>"] = { "<cmd>bnext<cr>", desc = "Next Buffer" },
    ["<S-Tab>"] = { "<cmd>bprev<cr>", desc = "Previous Buffer" },

    -- My Beloved vim-colemak Bindings
    -- Movement Keys
    ["h"] = { "h", desc = "Move left" },
    ["n"] = { "gj", desc = "Move down" },
    ["e"] = { "gk", desc = "Move up" },
    ["i"] = { "l", desc = "Move right" },
    -- Words forward/backward
    ["l"] = { "b", desc = "Move to start of word" },
    ["L"] = { "B", desc = "Move to start of word" },
    ["u"] = { "e", desc = "Move to end of word" },
    ["U"] = { "E", desc = "Move to end of word" },
    ["y"] = { "w", desc = "Move to end of word" },
    ["Y"] = { "W", desc = "Move to end of word" },

    -- Mode Keys
    ["s"] =     { "i",     desc = "Insert mode" },
    ["S"] =     { "I",     desc = "Insert mode (Start of line)" },
    ["t"] =     { "a",     desc = "Append mode" },
    ["T"] =     { "A",     desc = "Append mode (End of line)" },
    ["a"] =     { "v",     desc = "Visual mode" },
    ["A"] =     { "V",     desc = "Visual line mode" },
    ["<C-a>"] = { "<C-v>", desc = "Visual block mode" },
    ["ga"] =    { "gv",    desc = "Visual mode (?)" },

    -- Cut/Copy/Paste and Undo/Redo
    ["x"] =  { "x",     desc = "Cut" },
    ["c"] =  { "y",     desc = "Copy" },
    ["v"] =  { "p",     desc = "Paste" },
    ["X"] =  { "dd",    desc = "Cut line"},
    ["C"] =  { "yy",    desc = "Copy line"},
    ["V"] =  { "P",     desc = "Paste on current line"},
    ["z"] =  { "u",     desc = "Undo" },
    ["gz"] = { "U",     desc = "Undo (?)" },
    ["Z"] =  { "<C-R>", desc = "Redo" },

    -- Change (?)
    ["w"] = { "c" },
    ["W"] = { "C" },
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
    ["n"] = { "j", desc = "Move down" },
    ["e"] = { "k", desc = "Move up" },
    ["i"] = { "l", desc = "Move right" },
    
    -- Cut/Copy/Paste and Undo/Redo
    ["x"] =  { "x",     desc = "Cut" },
    ["c"] =  { "y",     desc = "Copy" },
    ["v"] =  { "p",     desc = "Paste" },
    ["X"] =  { "dd",    desc = "Cut line"},
    ["C"] =  { "yy",    desc = "Copy line"},
    ["V"] =  { "P",     desc = "Paste on current line"},
    ["z"] =  { "u",     desc = "Undo" },
    ["gz"] = { "U",     desc = "Undo (?)" },
    ["Z"] =  { "<C-R>", desc = "Redo" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
