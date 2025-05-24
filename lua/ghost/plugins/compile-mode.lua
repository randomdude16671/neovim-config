return {
  "ej-shafran/compile-mode.nvim",
  branch = "nightly",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<C-c><C-o>", 
      "<cmd>Compile<cr>", 
      desc = "Enter compile mode"
    },
  }, 
  config = function()
    ---@type CompileModeOpts
    vim.g.compile_mode = {
      default_command = "", -- set the default command to nothing to make it even mode goated
    }
  end
}
