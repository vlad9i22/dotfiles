return {
    'mfussenegger/nvim-dap',
    config = function()
        local dap = require("dap")
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
        }
        dap.adapters.cppdbg = {
            id = 'cppdbg',
            type = 'executable',
            command = '/home/vlad/Documents/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
        }
    end,
}
