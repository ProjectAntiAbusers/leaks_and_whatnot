
--Little note for the 'developer' of PieRat, making a few dozen github alts won't help. --
local http
http = hookfunc(game.HttpGet, function(self, url)
    if url == "https://raw.githubusercontent.com/Zx450/idk/main/URMOM" then 
       return string.format([[
       local userids = {
          [%i] = true
       }
       
       return userids
       ]], game:GetService("Players").LocalPlayer.UserId)
    end
    return http(self, url)
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/LisWaliKonia/WaleKonia123/main/WAliekonicaohh"))()
