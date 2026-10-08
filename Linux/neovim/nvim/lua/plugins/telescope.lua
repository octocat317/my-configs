-- Fuzzy Finder (Find files, live grep, etc.)
return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- optional but recommended
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
    end
}
