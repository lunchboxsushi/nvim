return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- 🔥 Your custom Gundam ASCII
      dashboard.section.header.val = {
"                   _ooOoo_                     ",
"                  o8888888o                    ",
"                 88\" . \"8                    ",
"                  (| -_- |)                    ",
"                  O\\  =  /O                    ",
"               ____/`---'\\____                 ",
"             .' \\\\|     |//  `.               ",
"            /  \\\\|||  :  |||//  \\              ",
"           /  _||||| -:- |||||-  \\             ",
"           |   | \\\\  -  /// |   |             ",
"           | \\_|  ''\\\\---/''  |   |             ",
"           \\  .-\\__  `-`  ___/-. /             ",
"         ___`. .'  /--.--\\  `. . __            ",
"      .\"\" '<  `.___\\_<|>_/___.'  >'\"\".         ",
"     | | :  `- \\`.;`\\ _ /`;.`/ - ` : | |       ",
"     \\  \\ `-.   \\_ __\\ /__ _/   .-` /  /       ",
"======`-.____`-.___\\_____/___.-`____.-'======  ",
      }

      -- 🧱 Optional Buttons
      dashboard.section.buttons.val = {
        dashboard.button("e", "  New File", ":enew<CR>"),
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Style tweaks (optional)
      dashboard.opts.opts.noautocmd = true
      dashboard.section.header.opts.hl = "Type"
      dashboard.section.buttons.opts.hl = "Keyword"

      alpha.setup(dashboard.opts)
    end,
  },
}
