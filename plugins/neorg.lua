return {
  "nvim-neorg/neorg",
  after = "nvim-treesitter/nvim-treesitter",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      ["core.export"] = {},
      ["core.journal"] = {},
      ["core.qol.toc"] = {},
      ["core.qol.todo_items"] = {},
      ["core.integrations.telescope"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.keybinds"] = {
        config = {
          default_keybinds = true,
          hook = function (keybinds)
            keybinds.map("norg", "n", "gm", "<cmd>Neorg inject-metadata<CR>")
          end,
        },
      },
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/notes",
          },
          neorg_leader = "<Leader><Leader>"
        },
      },
      ["external.templates"] = {
        config = {
          templates_dir = "~/.config/nvim/lua/user/norg_templates"
        }
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neorg/neorg-telescope",
    "pysan3/neorg-templates",
    "L3MON4D3/LuaSnip"
  },
}
