local fbActions = require "telescope".extensions.file_browser.actions
require("telescope").setup {
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            -- do more keybind changes to fix more this more like net rw or perfered keybindings
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    ["%"] = fbActions.create,
                    ["r"] = fbActions.rename,
                    ["m"] = fbActions.move,
                    ["c"] = fbActions.move,
                    ["r"] = fbActions.remove,
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    ["%"] = fbActions.create,
                    ["r"] = fbActions.rename,
                    ["m"] = fbActions.move,
                    ["c"] = fbActions.move,
                    ["r"] = fbActions.remove,
                    -- your custom normal mode mappings
                },
            },
        },
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
