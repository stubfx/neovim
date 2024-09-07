function RebuildUnrealTargets()
    local script = './build.ps1'
    if vim.fn.filereadable(script) ~= 0 then
        -- no file? no party.
        print('no' .. script .. 'file found.')
        return
    end
    vim.fn.jobstart({'powershell', '-File', script}, {
        stdout_buffered = true,
        stderr_buffered = true,
        on_exit = function ()
            vim.cmd('LspRestart')
        end
    })
end
vim.api.nvim_create_user_command('UnrealEngineRebuild',
    function()
        RebuildUnrealTargets()
    end,
    {}
)
