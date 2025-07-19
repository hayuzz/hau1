script_key="XXFWbggeDvcglPVNoUEtVGCCQekLFWjq";
setfpscap(3)

getgenv().gagConfig = {
    -- Event:
    CRAFT_EVENT = { "Anti Bee Egg", "Primal Egg", "Lightning Rod" },
    PETS_TRADE_DINO = { "Caterpillar", "Seagull", "Crab", "Dog", "Flamingo", "Bunny", "Golden Lab" },
    BUY_TRAVELING_MERCHANT = { "Bee Egg", "Loquat", "Feijoa", "Pitcher Plant" },
    -- General:
    AUTO_UPDATE_RESTART = true,
    REDEEM_CODES = {},
    EXTRA_PET_SLOTS = 5,
    EXTRA_EGG_SLOTS = 5,
    MUTATE_PET = { "Spinosaurus", "T-Rex", "Fennec Fox", "Butterfly", "Disco Bee", "Raccoon", "Dragonfly", "Mimic Octopus", "Dilophosaurus", "Seal", "Blood Kiwi", "Rooster" },  -- Pet Names
    OPEN_ALL_SEED_PACK = true,
    ADD_FRIEND = true,
    FAST_LEVEL_PET = true,

    MAX_PLANTS = 250,
    DESTROY_UNTIL_MIN_PLANTS = 200,
    DELETE_PLANTS_AFTER_MAX = { "Carrot", "Strawberry", "Blueberry", "Tomato", "Cauliflower" },
    
    BUY_EGGS = { "Bug Egg", "Bee Egg", "Paradise Egg", "Oasis Egg", "Mythical Egg", "Rare Summer Egg", "Common Summer Egg", ["Common Egg"] = 1, "Rare Egg", "Uncommon Egg" },
    PLANT_EGGS = { "Anti Bee Egg", "Primal Egg", "Dinosaur Egg", "Mythical Egg", "Bug Egg", "Paradise Egg", "Rare Summer Egg", "Common Summer Egg", "Common Egg", "Rare Egg", "Uncommon Egg" },
    
    -- BUY_SEED_SHOP Priority (Left -> Right)
    BUY_SEED_SHOP = { "Sugar Apple", "Beanstalk", "Mushroom", "Bamboo", "Pumpkin", "Watermelon", ["Daffodil"] = 50, ["Orange Tulip"] = 50, ["Carrot"] = 50 },
    KEEP_SEEDS = {},
    KEEP_SEEDS_AFTER_MAX_PLANTS = { "Carrot", "Strawberry", "Blueberry", "Orange Tulip", "Tomato", "Daffodil" },
    
    FAVOURITE_FRUIT_MUTATIONS = {},  -- Stop Autosell
    SKIP_HARVEST_MUTATIONS = {},  -- Stop Harvest

    KEEP_PETS = { "Dilophosaurus", ["Iguanodon"] =2 , "Bald Eagle", "Ankylosaurus", "Spinosaurus", "Pterodactyl", "Brontosaurus", "T-Rex", "Fennec Fox", "Blood Kiwi", "Peacock", "Starfish", "Rooster", ["Hamster"] = 2, "Disco Bee", "Raccoon", "Queen Bee", "Dragonfly", "Butterfly", "Mimic Octopus", "Red Fox", "Chicken Zombie", ["Dog"] = 1, ["Bunny"] = 1, ["Golden Lab"] = 1 },
    KEEP_PETS_WEIGHT = 5,

     -- EQUIP_PETS Priority (Left -> Right)
    EQUIP_PETS = { ["Dilophosaurus"] = 2, ["Seal"] = 2, ["Blood Kiwi"] = 2, ["Rooster"] = 2 },

    BUY_GEAR_SHOP = { "Master Sprinkler", "Godly Sprinkler", "Advanced Sprinkler", "Basic Sprinkler", "Starfish" },
    USE_SPRINKLER = {},

    PET_WEBHOOK_URL = "https://discord.com/api/webhooks/1389513606399266888/PPxC1xgCfkbUlGLfqOQqL-s-MF_0M5iOCHE77k4c_qOO-xtzAMv77ju9bhsvzdQxVKS7",
    SEED_WEBHOOK_URL = "", 
    NOTIFY_PETS = { "Fennec Fox", "Disco Bee", "Raccoon", "Dragonfly", "Butterfly", "Mimic Octopus", "T-Rex", "Spinosaurus", "Red Fox", "Brontosaurus", "Ankylosaurus", "Dilophosaurus" },
    NOTIFY_PETS_WEIGHT = 5,
    DISCORD_ID = "",
    WEBHOOK_NOTE = "ten nv",
    SHOW_WEBHOOK_USERNAME = true,
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c916e5b90dc37c71ecf1ec00dfce3d5d.lua"))()
