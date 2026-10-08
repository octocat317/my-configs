
return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 3000,
    render = "default",
    stages = "fade_in_slide_out",
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts)
    vim.notify = notify
  end,
}

