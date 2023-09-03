return {
  "nvim-neorg/neorg",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/notes",
          },
        },
      },
      ["core.concealer"] = {},
      ["core.export"] = {},
    }
  }
}
