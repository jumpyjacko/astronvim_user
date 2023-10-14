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
      -- ["core.ui.calendar"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.keybinds"] = {
        config = {
          default_keybinds = true,
          hook = function (keybinds)
            -- Core Plugin Keybinds
            keybinds.unmap("norg", "n", "gtd")
            keybinds.map_event("norg", "n", "gtd", "core.norg.qol.todo_items.todo.task_done", { desc = "Task Done" })

            keybinds.unmap("norg", "n", "gtu")
            keybinds.map_event("norg", "n", "gtu", "core.norg.qol.todo_items.todo.task_undone", { desc = "Task Undone" })

            keybinds.unmap("norg", "n", "gtp")
            keybinds.map_event("norg", "n", "gtp", "core.norg.qol.todo_items.todo.task_pending", { desc = "Task Pending" })

            keybinds.unmap("norg", "n", "gth")
            keybinds.map_event("norg", "n", "gth", "core.norg.qol.todo_items.todo.task_on_hold", { desc = "Task On Hold" })

            keybinds.unmap("norg", "n", "gtc")
            keybinds.map_event("norg", "n", "gtc", "core.norg.qol.todo_items.todo.task_cancelled", { desc = "Task Cancelled" })

            keybinds.unmap("norg", "n", "gtr")
            keybinds.map_event("norg", "n", "gtr", "core.norg.qol.todo_items.todo.task_recurring", { desc = "Task Recurring" })

            keybinds.unmap("norg", "n", "gti")
            keybinds.map_event("norg", "n", "gti", "core.norg.qol.todo_items.todo.task_important", { desc = "Task Important" })
            
            keybinds.map_event("norg", "n", "gm", "<cmd>Neorg inject-metadata<cr>", { desc = "Add Metadata" })
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
      ["external.exec"] = {},
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
    "L3MON4D3/LuaSnip",
    "laher/neorg-exec",
  },
}
