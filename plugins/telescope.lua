return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-n>"] = require("telescope.actions").move_selection_next,
          ["<C-e>"] = require("telescope.actions").move_selection_previous,
          ["<Esc>"] = require("telescope.actions").close,
        },
      },
    },
  },
}
