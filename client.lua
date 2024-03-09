vRP = Proxy.getInterface("vRP")

RegisterCommand('onlinestaff', function()
    TriggerServerCallback('nt_checkadmin:findadmin', function(OnlineStaff)
        if OnlineStaff == 0 then
            lib.notify({
                title = 'Staff Online',
                description = 'Der er ikke nogen staff online',
                type = 'error'
            })
        else
            lib.notify({
                title = 'Staff Online',
                description = 'Der er '..OnlineStaff..' staff',
                type = 'success'
            })
        end
    end)
end)