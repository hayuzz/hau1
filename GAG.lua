script_key="XXFWbggeDvcglPVNoUEtVGCCQekLFWjq";
setfpscap(3)

getgenv().gagConfig = {
    -- Event:
    CRAFT_EVENT = { "Anti Bee Egg", "Lightning Rod" },
    BUY_TRAVELING_MERCHANT = { "Bee Egg", "Loquat", "Feijoa", "Pitcher Plant" },
    BUY_EVENT_SHOP = {"Zen Egg"},
    MAX_EVENT_RESTOCK_SHECKLES = 2000000000000,

    -- General:
    AUTO_UPDATE_RESTART = true,
    REDEEM_CODES = {},
    EXTRA_PET_SLOTS = 5,
    EXTRA_EGG_SLOTS = 5,
    MUTATE_PET = { "Spinosaurus", "T-Rex", "Fennec Fox", "Butterfly", "Disco Bee", "Raccoon", "Dragonfly", "Mimic Octopus", "Dilophosaurus", "Seal", "Blood Kiwi", "Rooster" },  -- Pet Names
    OPEN_ALL_SEED_PACK = true,
    ADD_FRIEND = true,
    FAST_LEVEL_PET = true,

    MAX_PLANTS = 100,
    DESTROY_UNTIL_MIN_PLANTS = 100,
    DELETE_PLANTS_AFTER_MAX = { "Carrot", "Strawberry", "Blueberry", "Tomato", "Cauliflower" },
    
    BUY_EGGS = { "Bug Egg", "Bee Egg", "Paradise Egg", "Mythical Egg", "Rare Summer Egg", "Common Summer Egg", "Rare Egg", "Uncommon Egg" },
    PLANT_EGGS = { "Dinosaur Egg", "Zen Egg", "Primal Egg", "Anti Bee Egg", "Bee Egg", "Night Egg", "Bug Egg", "Paradise Egg", "Mythical Egg", "Common Summer Egg", "Rare Egg", "Uncommon Egg" },
    
    BUY_SEED_SHOP = { "Giant Pinecone", "Burning Bud", "Sugar Apple", "Ember Lily", "Beanstalk", "Cacao", "Pepper", "Mushroom", "Grape", "Mango", "Dragon Fruit", "Cactus", "Coconut", "Bamboo", "Apple", "Pumpkin", "Watermelon", ["Daffodil"] = 50, ["Tomato"] = 50, ["Orange Tulip"] = 50, ["Blueberry"] = 50, ["Strawberry"] = 50, ["Carrot"] = 50 },
    KEEP_SEEDS = {},
    KEEP_SEEDS_AFTER_MAX_PLANTS = { "Carrot", "Orange Tulip", "Tomato", "Daffodil" },
    
    FAVOURITE_FRUIT_MUTATIONS = {},  -- Stop Autosell
    SKIP_HARVEST_MUTATIONS = {},  -- Stop Harvest

    KEEP_PETS = { "Tanchozuru", "Seal", "Kitsune", "Kappa", "Dilophosaurus", "Bald Eagle", "Ankylosaurus", "Spinosaurus", "Pterodactyl", "Brontosaurus", "T-Rex", "Fennec Fox", "Blood Kiwi", "Peacock", "Starfish", "Rooster", ["Hamster"] = 2, "Disco Bee", "Raccoon", "Queen Bee", "Dragonfly", "Butterfly", "Mimic Octopus", "Red Fox", "Chicken Zombie", ["Dog"] = 1, ["Bunny"] = 1, ["Golden Lab"] = 1 },
    KEEP_PETS_WEIGHT = 6,

     -- EQUIP_PETS Priority (Left -> Right)
    EQUIP_PETS = { ["Tanchozuru"] = 2 , ["Seal"] = 4, ["Rooster"] = 2, "Starfish" },

    BUY_GEAR_SHOP = { "Master Sprinkler", "Godly Sprinkler", "Advanced Sprinkler", "Basic Sprinkler" },
    USE_SPRINKLER = { "Basic Sprinkler", "Master Sprinkler", "Godly Sprinkler", "Advanced Sprinkler" },

    PET_WEBHOOK_URL = "https://discord.com/api/webhooks/1389513606399266888/PPxC1xgCfkbUlGLfqOQqL-s-MF_0M5iOCHE77k4c_qOO-xtzAMv77ju9bhsvzdQxVKS7",
    SEED_WEBHOOK_URL = "", 
    NOTIFY_PETS = { "Kitsune", "Fennec Fox", "Disco Bee", "Raccoon", "Dragonfly", "Butterfly", "Mimic Octopus", "T-Rex", "Spinosaurus", "Red Fox", "Kappa"},
    NOTIFY_PETS_WEIGHT = 6,
    DISCORD_ID = "452715592558968842",
    WEBHOOK_NOTE = "hau1 oi co pet",
    SHOW_WEBHOOK_USERNAME = true,
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c916e5b90dc37c71ecf1ec00dfce3d5d.lua"))()
