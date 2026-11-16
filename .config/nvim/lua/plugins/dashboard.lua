return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                                            ",
      "	                                                                         ",
      "	         ████ ██████           █████      ██                       ",
      "	        ███████████             █████                               ",
      "	        █████████ ███████████████████ ███   ███████████     ",
      "	       █████████  ███    █████████████ █████ ██████████████     ",
      "	      █████████ ██████████ █████████ █████ █████ ████ █████     ",
      "	    ███████████ ███    ███ █████████ █████ █████ ████ █████    ",
      "	   ██████  █████████████████████ ████ █████ █████ ████ ██████   ",
      "	                                                                           ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", "<cmd>Telescope find_files<cr>"),
      dashboard.button("g", "  Find text", "<cmd>Telescope live_grep<cr>"),
      dashboard.button("e", "  New file", "<cmd>enew<cr>"),
      dashboard.button("l", "  Manage plugins", "<cmd>Lazy<cr>"),
      dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
    }

    dashboard.section.header.opts.hl = "Function"
    dashboard.section.buttons.opts.hl = "Keyword"
    dashboard.section.footer.opts.hl = "Comment"

    alpha.setup(dashboard.config)
  end,
}
