local cmake_tools = require("cmake-tools");
cmake_tools.setup {
    cmake_command = "cmake", -- this is used to specify cmake command path
    cmake_regenerate_on_save = true, -- auto generate when save CMakeLists.txt
    cmake_build_directory = "build/${variant:buildType}",


    cmake_dap_configuration = { -- debug settings for cmake
        name = "cpp",
        type = "codelldb",
        request = "launch",
        stoponentry = false,
        runinterminal = true,
        console = "integratedTerminal",
    },

    cmake_terminal = {
        name = "terminal",
        opts = {
            name = "Main Terminal",
            prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
            split_direction = "horizontal", -- "horizontal", "vertical"
            split_size = 11,

            -- Window handling
            single_terminal_per_instance = true, -- Single viewport, multiple windows
            single_terminal_per_tab = true, -- Single viewport per tab
            keep_terminal_static_location = true, -- Static location of the viewport if avialable

            -- Running Tasks
            start_insert_in_launch_task = false, -- If you want to enter terminal with :startinsert upon using :CMakeRun
            start_insert_in_other_tasks = false, -- If you want to enter terminal with :startinsert upon launching all other cmake tasks in the terminal. Generally set as false
            focus_on_main_terminal = false, -- Focus on cmake terminal when cmake task is launched. Only used if executor is terminal.
            focus_on_launch_terminal = false, -- Focus on cmake launch terminal when executable target in launched.
        },
    },
    cmake_notifications = {
        enabled = true, -- show cmake execution progress in nvim-notify
        spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }, -- icons used for progress display
        refresh_rate_ms = 100, -- how often to iterate icons
    },
}


