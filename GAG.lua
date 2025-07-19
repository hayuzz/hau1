repeat
    wait(35)
until game:IsLoaded()
task.wait(10)
getgenv().Config = {
    ["Time To Sell"] = 35, -- Seconds
    ["Craft Event"] = {
        ["Crafters Seed Pack"] = true,
        ["Anti Bee Egg"] = true,
        ["Ancient Seed Pack"] = true
    },
    ["Dont Open Pack"] = false,
    ["Dont Use Flower Seed Pack"] = true, -- If u Enable Crafters Seed Pack pls enable this
    ["Mode Plant"] = "Auto", -- "Custom"

    ["Seed"] = { -- Seed Plant Custom
        ["Strawberry"] = 44,
        ["Blueberry"] = 44,
        ["Tomato"] = 44,
        ["Loquat"] = 44,
        ["Pineapple"] = 44,
        ["Carrot"] = 44,
        ["Bell Pepper"] = 44,
        ["Green Apple"] = 44,
        ["Feijoa"] = 44,
        ["Avocado"] = 44,
        ["Sugar Apple"] = 44,
        ["Banana"] = 44,
        ["Prickly Pear"] = 44,
        ["Watermelon"] = 44,
        ["Kiwi"] = 44
    },
    ["Keep Seed"] = {"Dragon Pepper", "Elephant Ears", "Sunflower", "Candy Blossom"},
    ["FPS"] = 3,
    ["Egg"] = {
        ["Common Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 20
        },
        ["Rare Summer Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 10
        },
        ["Mythical Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 7
        },
        ["Rare Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 8
        },
        ["Anti Bee Egg"] = {
            ["Place"] = true,
            ["Priority"] = 5
        },
        ["Night Egg"] = {
            ["Place"] = true,
            ["Priority"] = 6
        },
        ["Bug Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 3
        },
        ["Paradise Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 4
        },
        ["Bee Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 10
        },
        ["Dinosaur Egg"] = {
            ["Place"] = true,
            ["Priority"] = 2
        },
        ["Primal Egg"] = {
            ["Place"] = true,
            ["Priority"] = 1
        },
    },

    ["Sprinkler"] = {
        ["Place Sprinkler"] = true,
        ["Buy Sprinkler"] = true,
        ["Basic Sprinkler"] = true,
        ["Advanced Sprinkler"] = true,
        ["Master Sprinkler"] = true,
        ["Godly Sprinkler"] = true
    },
    ["Plant Candy"] = false,
    ["PetNeedSend"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee", "Butterfly", "Mimic Octopus",
                       "Brontosaurus", "Fennec Fox", "Spinosaurus", "Ankylosaurus", "T-Rex"},
    ["Destroy Mode"] = {
        ["Auto Destroy when have money"] = 1000000, -- its will destroy all trees select when money >= select
        ["Mode Destroy"] = "Auto", -- "Custom"
        ["Trees"] = {"Strawberry", "Blueberry", "Corn", "Orange Tulip", "Carrot"},
        ["Rarity Destroy Auto"] = {"Common", "Uncommon", "Rare", "Legendary"},
        ["Destroy Untill"] = 150
    },
    ["Url"] = "https://discord.com/api/webhooks/1389513606399266888/PPxC1xgCfkbUlGLfqOQqL-s-MF_0M5iOCHE77k4c_qOO-xtzAMv77ju9bhsvzdQxVKS7", -- Webhook 

    ["Boost FPS"] = true,
    ["Black Screen"] = true,
    ["Dino Event"] = {
        ["Auto Claim Quest"] = true,
        ["Auto Restart Quest"] = true,
        ["Auto Submit"] = true,
        ["Auto Trade Eggs"] = true,
        ["Pet Dont Trade"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee", "Butterfly",
                               "Mimic Octopus", "Brontosaurus", "Pterodactyl", "Fennec Fox", "Axolotl", "Hyacinth Macaw",
                               "Scarlet Macaw", "Spinosaurus", "Ankylosaurus", "T-Rex"}
    },
    ["Note"] = "hau1",
    ["Pet Mode"] = {
        ["Sell Pet"] = true,
        ["Equip Pet"] = true,
        ["Name Pet Equip"] = {
            ["Rooster"] = true,
            ["Seal"] = true,
            ["Dilophosaurus"] = true,
            ["Pachycephalosaurus"] = true,
            ["Chicken"] = true
        },
        ["Max Slot Pet To Sell"] = 40, -- If Total Pet In Inventory >= ["Max Slot Pet To Sell"] script will sell pet
        ["Upgrade Slot Egg"] = {
            ["Enable"] = true,
            ["Black List Pet For Upgrade Slots"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee",
                                                    "Butterfly", "Mimic Octopus", "Brontosaurus", "Fennec Fox",
                                                    "Spinosaurus", "Ankylosaurus", "T-Rex"}
        },
        ["Pet Dont Delete"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee", "Butterfly",
                               "Mimic Octopus", "Brontosaurus", "Pterodactyl", "Fennec Fox", "Axolotl", "Hyacinth Macaw",
                               "Scarlet Macaw", "Spinosaurus", "Ankylosaurus", "Dilophosaurus","Rooster", "Seal", "T-Rex"},
        ["Dont Sell Pet If Weight > x"] = 5 -- Script dont sell pet if this weight >= 10
    },
    ["Webhook Mode"] = {
        ["Enable Send Pet Weight"] = true,
        ["Weight"] = 5 -- if Weight >= 10 they will send wh
    },
    ["Rejoin Mode"] = {
        ["Auto Rejoin When Error Module Egg"] = true,
        ["Auto rejoin on script update"] = false,
        ["Enable Rejoin After X Time"] = true,
        ["Rejoin After X Time"] = 180 -- Minutes
    },
    ["Limit Tree"] = 250,
    ["Mutation Skips"] = { -- Skip Havest
        ["Pollinated"] = false,
        ["Disco"] = false,
        ["Twisted"] = false,
        ["Wet"] = false,
        ["Choc"] = false,
        ["Bloodlit"] = false,
        ["Celestial"] = false,
        ["Moonlit"] = false,
        ["Chilled"] = false,
        ["Zombified"] = false,
        ["Plasma"] = false,
        ["Burnt"] = false,
        ["Frozen"] = false,
        ["Voidtouched"] = false,
        ["HoneyGlazed"] = false,
        ["Shocked"] = false
    }
}
setfpscap(getgenv().Config["FPS"])
script_key = "RLxKKcDiWdnMYkoDrtJUPozgVqXtXQRU";
repeat
    wait()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/791a1cc069605b60b85413847f6e5d2f.lua"))()
    task.wait(10)
until getgenv().Loadeds
