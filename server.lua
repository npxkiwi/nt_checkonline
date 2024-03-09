local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","nt_checkadmin")

function sendToDiscord(color, name, message, footer, webhook)
    local embed = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = footer,
              },
          }
      }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end


RegisterServerCallback('nt_checkadmin:findadmin', function(source, cb)
	StaffOnline = 0
	local users = vRP.getUsers({})
	for k,v in pairs(users) do
		local player = vRP.getUserSource({k})
	  	if player ~= nil then
			if users ~= nil then
				local user_id = vRP.getUserId({player})
				if vRP.hasPermission({user_id, Config.Permission}) then
					StaffOnline = StaffOnline + 1
				end
			end
	  	end
	end
	cb(StaffOnline)
end)