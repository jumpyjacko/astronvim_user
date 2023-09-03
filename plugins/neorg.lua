return {
  "nvim-neorg/neorg",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            everything = "~/notes/everything",
          },
        },
      },
      ["core.concealer"] = {},
      ["core.export"] = {},
    }
  }
}
