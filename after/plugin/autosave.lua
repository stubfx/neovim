function Autosave()
    vim.api.nvim_create_autocmd("InsertLeave", {
        pattern = "*",
        command = "w"
    })
    print "Autosave enabled"
end


vim.api.nvim_create_user_command("Autosave", function() Autosave() end, {})
