return {
  { -- Add indentation guides even on blank lines
    "lukas-reineke/indent-blankline.nvim",
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = "ibl",
    opts = {
      indent = {
        char = "┆",
      },
      whitespace = {
        remove_blankline_trail = false,
      },
      scope = {
        enabled = false,
      },
    },
  },
}
