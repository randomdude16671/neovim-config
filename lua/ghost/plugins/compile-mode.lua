return {
  "ej-shafran/compile-mode.nvim",
  branch = "nightly",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "m00qek/baleia.nvim", tag = "v1.3.0" },
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
      baleia_setup = true, 
      default_command = "", 
    }
  end
}
