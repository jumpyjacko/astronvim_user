return {
  "nvim-neorg/neorg",
  after = "nvim-treesitter/nvim-treesitter",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      ["core.export"] = {},
      ["core.journal"] = {},
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
        },
      },
    },
  },
  dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
}
