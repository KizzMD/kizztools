-- KizzDev Auto Loader
local Games = {
    [13772394625] = "https://pastebin.com/raw/zBMcckt1", -- Blade Ball
}

local url = Games[game.PlaceId]
if url then
    local ok, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not ok then warn("[KizzDev] Gagal: " .. tostring(err)) end
else
    warn("[KizzDev] Game belum didukung. PlaceId: " .. tostring(game.PlaceId))
end
