getgenv().minTier_Check = "Mythical" -- Phẩm chất pet
getgenv().targetEggs = {"Commn Egg", "Mythic Egg", "Bee Egg"} -- Danh sách trứng cần check trong stock

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

repeat wait() until game:IsLoaded()
repeat wait() until player.Character
repeat wait() until player:GetAttribute("DataFullyLoaded") and player:GetAttribute("Finished_Loading")

local tierOrder = {
    Divine = 1,
    Mythical = 2,
    Legendary = 3,
    Rare = 4,
    Uncommon = 5,
    Common = 6
}

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

    -- Pet Filtering
    local petText, totalDivine = "", 0
    pcall(function()
        local ds = require(ReplicatedStorage.Modules:WaitForChild("DataService"))
        local petList = require(ReplicatedStorage.Data.PetRegistry.PetList)
        local counter = {}

        local minTier = getgenv().minTier_Check or "Mythical"
        local minTierValue = tierOrder[minTier] or tierOrder["Mythical"]

        for _, v in pairs(ds:GetData().PetsData.PetInventory.Data) do
            local name = v.PetType or "Unknown"
            local info = petList[name]
            if info then
                local rarity = info.Rarity
                if tierOrder[rarity] and tierOrder[rarity] <= minTierValue then
                    counter[name] = (counter[name] or 0) + 1
                end
                if rarity == "Divine" then
                    totalDivine = totalDivine + 1
                end
            end
        end

        local list = {}
        for name, amt in pairs(counter) do
            table.insert(list, string.format("%s (%d)", name, amt))
        end
        petText = table.concat(list, ", ")
    end)
local function isEggAvailable()
    local gui = player:FindFirstChild("PlayerGui")
    local petShopUI = gui and gui:FindFirstChild("PetShop_UI")
    local frame = petShopUI and petShopUI:FindFirstChild("Frame")
    local scrollingFrame = frame and frame:FindFirstChild("ScrollingFrame")
    if not scrollingFrame then return "N" end

    for _, f in ipairs(scrollingFrame:GetChildren()) do
        if table.find(getgenv().targetEggs, f.Name) then
            local stockText = f:FindFirstChild("Main_Frame")
            stockText = stockText and stockText:FindFirstChild("Stock_Text")
            local text = stockText and stockText.Text
            local num = text and tonumber(text:match("X(%d+)"))
            if num and num > 0 then return "Y" end
        end
    end

    return "N"
end
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
        Level = isEggAvailable() or "N",
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
        print(string.format("✅ File %sData.json đã được ghi thành công.", player.Name))
    else
        warn("❌ Lỗi ghi file: " .. tostring(errorMessage))
    end
end

task.spawn(function()
    while true do
        writeDataToFile()
        task.wait(35)
    end
end)
