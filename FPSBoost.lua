local co = coroutine.create(function() 
    local data = request({Url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-FFlag-Tracker/main/AndroidApp.json",Method = "GET"}).Body
    local result = game:GetService("HttpService"):JSONDecode(data)
    for i, v in pairs(result) do
        setfflag(tostring(i), tostring(v))
    end
end)
coroutine.resume(co)