local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

repeat wait() until game:IsLoaded()
repeat wait() until player.Character
repeat wait() until player:GetAttribute("DataFullyLoaded") and player:GetAttribute("Finished_Loading")


local function formatTime(seconds)
    seconds = math.max(0, tonumber(seconds) or 0)
    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = math.floor(seconds % 60)
    return string.format("%02d:%02d:%02d", h, m, s)
end

local function parseNumber(str)
    if type(str) == "string" then
        return tonumber(str:gsub(",", "")) or 0
    end
    return tonumber(str) or 0
end


local function collectData()
    local data = {}

    local money = player:WaitForChild("leaderstats"):WaitForChild("Sheckles").Value

    local honey = 0
    pcall(function()
        local ds = require(ReplicatedStorage.Modules:WaitForChild("DataService"))
        honey = ds:GetData().SpecialCurrency.Honey or 0
    end)

    local petText, totalDivine = "", 0
    pcall(function()
        local ds = require(ReplicatedStorage.Modules:WaitForChild("DataService"))
        local petList = require(ReplicatedStorage.Data.PetRegistry.PetList)
        local counter = {}

        for _, v in pairs(ds:GetData().PetsData.PetInventory.Data) do
            local name = v.PetType or "Unknown"
            counter[name] = (counter[name] or 0) + 1

            local info = petList[name]
            if info and info.Rarity == "Divine" then
                totalDivine = totalDivine + 1
            end
        end

        local list = {}
        for name, amt in pairs(counter) do
            table.insert(list, string.format("%s (%d)", name, amt))
        end
        petText = table.concat(list, ", ")
    end)

    local function collectEggItems(container, map)
        for _, v in ipairs(container:GetChildren()) do
            local name = v:GetAttribute("Seed") or v:GetAttribute("f") or v:GetAttribute("h")
            local qty = v:GetAttribute("Quantity") or v:GetAttribute("e") or 1
            if name and name:lower():find("egg") then
                map[name] = (map[name] or 0) + qty
            end
        end
    end

    local eggMap = {}
    collectEggItems(player.Backpack, eggMap)
    collectEggItems(player.Character, eggMap)

    local eggList = {}
    for name, qty in pairs(eggMap) do
        table.insert(eggList, string.format("%s (%d)", name, qty))
    end
    local eggText = table.concat(eggList, ", ")

    local eggStatusList = {}
    pcall(function()
        local getplace = require(ReplicatedStorage.Modules:WaitForChild("GetFarm"))(player)
        for _, v in ipairs(getplace.Important.Objects_Physical:GetChildren()) do
            local eggName = v:GetAttribute("EggName")
            local hatchTime = formatTime(v:GetAttribute("TimeToHatch"))
            if eggName then
                table.insert(eggStatusList, string.format("%s (%s)", eggName, hatchTime))
            end
        end
    end)

    local invDict = {}
    for _, v in ipairs(player.Backpack:GetChildren()) do
        local name = v:GetAttribute("Seed") or v:GetAttribute("f") or v:GetAttribute("h")
        local qty = v:GetAttribute("Quantity") or v:GetAttribute("e") or 1
        if name then
            invDict[name] = (invDict[name] or 0) + qty
        end
    end
    local inventoryList = {}
    for name, qty in pairs(invDict) do
        table.insert(inventoryList, string.format("%s (%d)", name, qty))
    end

    data["Basic Data"] = {
        Level = 2600,
        Beli = money,
        Fragments = totalDivine,
        DevilFruit = petText ~= "" and petText or "None",
        Race = #inventoryList > 0 and table.concat(inventoryList, ", ") or "None",
        ["Bounty/Honor"] = honey,
        ["Fighting Style"] = eggText ~= "" and eggText or "None"
    }

    data["Items Inventory"] = #eggStatusList > 0 and eggStatusList or {"None"}

    return data
end


local function writeDataToFile()
    local success, errorMessage = pcall(function()
        local data = collectData()
        local filePath = string.format("%sData.json", player.Name)
        writefile(filePath, HttpService:JSONEncode(data))
    end)

    if success then
        print(string.format("âœ… File %sData.json Ä‘Ă£ Ä‘Æ°á»£c ghi thĂ nh cĂ´ng.", player.Name))
    else
        warn("âŒ Lá»—i ghi file: " .. tostring(errorMessage))
    end
end

task.spawn(function()
    while true do
        writeDataToFile()
        task.wait(35)
    end
end)
