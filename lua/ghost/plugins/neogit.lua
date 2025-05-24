return {
  "NeogitOrg/neogit", 
  dependencies = {
    "vim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  keys = {
    {
      "<leader>r", 
      function()
        require("neogit").open()
      end, 
    },
  },
}
