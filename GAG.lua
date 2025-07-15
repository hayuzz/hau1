getgenv().Config = {
    ["Time To Sell"] = 35, -- Seconds
    ["Craft Event"] = {
        ["Crafters Seed Pack"] = true,
        ["Ancient Seed Pack"] = true,
        ["Anti Bee Egg"] = true
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
        ["Mythical Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 7
        },
        ["Oasis Egg"] = {
            ["Place"] = true,
            ["Priority"] = 4
        },
        ["Anti Bee Egg"] = {
            ["Place"] = true,
            ["Priority"] = 2
        },
        ["Night Egg"] = {
            ["Place"] = true,
            ["Priority"] = 5
        },
        ["Bug Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 6
        },
        ["Paradise Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 3
        },
        ["Common Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 9
        },
        ["Rare Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 8
        },
        ["Dinosaur Egg"] = {
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
                       "Brontosaurus", "Fennec Fox", "Spinosaurus", "Ankylosaurus", "Dilophosaurus", "T-Rex"},
    ["Destroy Mode"] = {
        ["Auto Destroy when have money"] = 1000000, -- its will destroy all trees select when money >= select
        ["Mode Destroy"] = "Auto", -- "Custom"
        ["Trees"] = {"Strawberry", "Blueberry", "Corn", "Orange Tulip", "Carrot"},
        ["Rarity Destroy Auto"] = {"Common", "Uncommon", "Rare", "Legendary"},
        ["Destroy Untill"] = 450
    },
    ["Url"] = "https://discord.com/api/webhooks/1389513606399266888/PPxC1xgCfkbUlGLfqOQqL-s-MF_0M5iOCHE77k4c_qOO-xtzAMv77ju9bhsvzdQxVKS7", -- Webhook 

    ["Boost FPS"] = true,
    ["Black Screen"] = true,
    ["Dino Event"] = {
        ["Auto Claim Quest"] = true,
        ["Auto Restart Quest"] = true,
        ["Auto Trade Eggs"] = true,
        ["Pet Dont Trade"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee", "Butterfly",
                               "Mimic Octopus", "Brontosaurus", "Pterodactyl", "Fennec Fox", "Axolotl", "Hyacinth Macaw",
                               "Scarlet Macaw", "Spinosaurus", "Ankylosaurus", "Dilophosaurus", "T-Rex"}
    },
    ["Note"] = "HauNe2.1",
    ["Pet Mode"] = {
        ["Sell Pet"] = true,
        ["Equip Pet"] = true,
        ["Name Pet Equip"] = {
            ["Rooster"] = true,
            ["Bald Eagle"] = true,
            ["Chicken"] = true
        },
        ["Max Slot Pet To Sell"] = 1, -- If Total Pet In Inventory >= ["Max Slot Pet To Sell"] script will sell pet
        ["Upgrade Slot Egg"] = {
            ["Enable"] = true,
            ["Black List Pet For Upgrade Slots"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee",
                                                    "Butterfly", "Mimic Octopus", "Pterodactyl", "Brontosaurus", "Fennec Fox",
                                                    "Spinosaurus", "Ankylosaurus", "Dilophosaurus", "Hyacinth Macaw", "Scarlet Macaw", "T-Rex"}
        },
        ["Pet Dont Delete"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee", "Butterfly",
                               "Mimic Octopus", "Brontosaurus", "Pterodactyl", "Fennec Fox", "Axolotl", "Hyacinth Macaw",
                               "Scarlet Macaw", "Spinosaurus", "Ankylosaurus", "Dilophosaurus","Rooster", "T-Rex"},
        ["Dont Sell Pet If Weight > x"] = 10 -- Script dont sell pet if this weight >= 10
    },
    ["Webhook Mode"] = {
        ["Enable Send Pet Weight"] = true,
        ["Weight"] = 6 -- if Weight >= 10 they will send wh
    },
    ["Rejoin Mode"] = {
        ["Auto Rejoin When Error Module Egg"] = true,
        ["Auto rejoin on script update"] = false,
        ["Enable Rejoin After X Time"] = false,
        ["Rejoin After X Time"] = 60 -- Minutes
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
until getgenv().Loaded
