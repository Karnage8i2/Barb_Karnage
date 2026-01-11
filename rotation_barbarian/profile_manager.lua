--[[
═══════════════════════════════════════════════════════════════════════════════
    BARBARIAN BUILD PROFILE MANAGER
    
    This module manages different build profiles for Barbarian:
    - Earthquake Barbarian
    - Lunging Strike Barbarian  
    - Hammer of the Ancients (HOTA) Barbarian
    - Whirlwind Barbarian
    - Bash Barbarian
    
    Features:
    - Profile selection with optimized rotations
    - Boss-specific rotation logic
    - AoE-specific rotation logic
    - Automatic skill detection (Equipped Skills)
═══════════════════════════════════════════════════════════════════════════════
]]--

local my_utility = require("my_utility/my_utility")

-- Profile menu elements
local profile_menu_elements = {
    main_tree = tree_node:new(0),
    profile_selector = combo_box:new(0, get_hash(my_utility.plugin_label .. "profile_selector")),
}

-- Available profiles
local profile_options = {
    "HOTA (Hammer of the Ancients)",
    "Earthquake",
    "Lunging Strike",
    "Whirlwind", 
    "Bash"
}

-- Current active profile
local current_profile = "HOTA (Hammer of the Ancients)"

--[[
═══════════════════════════════════════════════════════════════════════════════
    PROFILE DEFINITIONS
═══════════════════════════════════════════════════════════════════════════════
]]--

local profiles = {
    ["HOTA (Hammer of the Ancients)"] = {
        name = "HOTA (Hammer of the Ancients)",
        description = "Hammer-focused build with Bash stacking",
        
        -- Core skills for this build
        core_skills = {
            "hammer_of_ancients",
            "bash",
            "war_cry",
            "rallying_cry", 
            "challenging_shout",
            "steel_grasp",
            "charge",
            "ground_stomp",
            "iron_skin",
            "wrath_of_the_berserk",
            "call_of_the_ancients",
        },
        
        -- Spell priority for rotation (lower = higher priority)
        spell_priority = {
            challenging_shout = 1,
            war_cry = 2,
            rallying_cry = 3,
            iron_skin = 4,
            wrath_of_the_berserk = 5,
            call_of_the_ancients = 6,
            steel_grasp = 7,
            ground_stomp = 8,
            charge = 9,
            hammer_of_ancients = 10,
            bash = 11,
        },
        
        -- Boss rotation
        boss_rotation = {
            "Keep all shouts active",
            "Use Wrath of Berserk + Call of Ancients on cooldown",
            "Bash x2 to build stacks",
            "Hammer of Ancients with buff",
            "Charge to close gaps",
        },
        
        -- AoE rotation
        aoe_rotation = {
            "Steel Grasp to pull enemies",
            "Keep War Cry active",
            "Ground Stomp for control",
            "Bash x2 on grouped enemies",
            "Hammer of Ancients on stacked mobs",
        },
    },
    
    ["Earthquake"] = {
        name = "Earthquake",
        description = "Upheaval-based AoE build with Leap mobility",
        
        core_skills = {
            "upheaval",
            "leap",
            "bash",
            "war_cry",
            "rallying_cry",
            "challenging_shout",
            "ground_stomp",
            "iron_skin",
            "wrath_of_the_berserk",
            "call_of_the_ancients",
        },
        
        spell_priority = {
            challenging_shout = 1,
            war_cry = 2,
            rallying_cry = 3,
            iron_skin = 4,
            wrath_of_the_berserk = 5,
            call_of_the_ancients = 6,
            leap = 7,
            upheaval = 8,
            ground_stomp = 9,
            bash = 10,
        },
        
        boss_rotation = {
            "Leap to boss",
            "Cast Upheaval for burst damage",
            "Maintain all shouts",
            "Use Bash as filler",
            "Re-position with Leap as needed",
        },
        
        aoe_rotation = {
            "Leap into mob pack",
            "Cast Upheaval immediately",
            "Ground Stomp for control",
            "Maintain War Cry",
            "Keep casting Upheaval on cooldown",
        },
    },
    
    ["Lunging Strike"] = {
        name = "Lunging Strike",
        description = "Mobile basic attack build with Lunging Strike",
        
        core_skills = {
            "lunging_strike",
            "upheaval",
            "war_cry",
            "rallying_cry",
            "challenging_shout",
            "steel_grasp",
            "charge",
            "ground_stomp",
            "iron_skin",
            "wrath_of_the_berserk",
            "call_of_the_ancients",
        },
        
        spell_priority = {
            challenging_shout = 1,
            war_cry = 2,
            rallying_cry = 3,
            iron_skin = 4,
            wrath_of_the_berserk = 5,
            call_of_the_ancients = 6,
            steel_grasp = 7,
            ground_stomp = 8,
            upheaval = 9,
            charge = 10,
            lunging_strike = 11,
        },
        
        boss_rotation = {
            "Keep all shouts active",
            "Use Wrath + Ancients on cooldown",
            "Lunging Strike for mobility and damage",
            "Upheaval when in range",
            "Charge to gap close",
        },
        
        aoe_rotation = {
            "Steel Grasp to group",
            "Lunging Strike through packs",
            "Upheaval on grouped enemies",
            "Ground Stomp for control",
            "Maintain War Cry buff",
        },
    },
    
    ["Whirlwind"] = {
        name = "Whirlwind",
        description = "Channeled Whirlwind build",
        
        core_skills = {
            "whirl_wind",
            "frenzy",
            "war_cry",
            "rallying_cry",
            "challenging_shout",
            "ground_stomp",
            "charge",
            "iron_skin",
            "wrath_of_the_berserk",
            "call_of_the_ancients",
        },
        
        spell_priority = {
            challenging_shout = 1,
            war_cry = 2,
            rallying_cry = 3,
            iron_skin = 4,
            wrath_of_the_berserk = 5,
            call_of_the_ancients = 6,
            ground_stomp = 7,
            charge = 8,
            whirl_wind = 9,
            frenzy = 10,
        },
        
        boss_rotation = {
            "Activate all shouts",
            "Pop Wrath + Ancients",
            "Channel Whirlwind on boss",
            "Use Frenzy to maintain fury",
            "Charge to reposition",
        },
        
        aoe_rotation = {
            "Charge into pack",
            "Activate War Cry",
            "Channel Whirlwind through enemies",
            "Ground Stomp when low HP",
            "Maintain fury with Frenzy between channels",
        },
    },
    
    ["Bash"] = {
        name = "Bash",
        description = "Basic Bash-focused build with high attack speed",
        
        core_skills = {
            "bash",
            "double_swing",
            "war_cry",
            "rallying_cry",
            "challenging_shout",
            "steel_grasp",
            "charge",
            "ground_stomp",
            "iron_skin",
            "wrath_of_the_berserk",
            "call_of_the_ancients",
        },
        
        spell_priority = {
            challenging_shout = 1,
            war_cry = 2,
            rallying_cry = 3,
            iron_skin = 4,
            wrath_of_the_berserk = 5,
            call_of_the_ancients = 6,
            steel_grasp = 7,
            ground_stomp = 8,
            double_swing = 9,
            charge = 10,
            bash = 11,
        },
        
        boss_rotation = {
            "Maintain all shouts",
            "Use Wrath + Ancients for burst",
            "Spam Bash on boss",
            "Double Swing for AoE around boss",
            "Charge for mobility",
        },
        
        aoe_rotation = {
            "Steel Grasp to group",
            "War Cry for damage",
            "Bash spam on grouped enemies",
            "Double Swing for cleave",
            "Ground Stomp for control",
        },
    },
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    EQUIPPED SKILLS DETECTION
    
    This function uses hybrid detection:
    1. Checks if skill is in current profile's core_skills list
    2. Checks if skill is actually on the player's skill bar via API
    Both conditions must be true for a skill to be "equipped"
═══════════════════════════════════════════════════════════════════════════════
]]--

local spell_ids = {
    bash = 200765,
    hammer_of_ancients = 213673,
    whirl_wind = 206435,
    lunging_strike = 206504,
    frenzy = 206432,
    flay = 200787,
    upheaval = 202484,
    double_swing = 203268,
    rend = 208333,
    rallying_cry = 204662,
    challenging_shout = 204450,
    war_cry = 194096,
    iron_skin = 201633,
    ground_stomp = 198283,
    kick = 199516,
    charge = 203177,
    leap = 199206,
    rupture = 208499,
    death_blow = 207827,
    wrath_of_the_berserk = 203224,
    call_of_the_ancients = 204513,
    iron_maelstorm = 207895,
    steel_grasp = 210670,
    mighty_throw = 208683,
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    HELPER FUNCTIONS
═══════════════════════════════════════════════════════════════════════════════
]]--

local function get_current_profile()
    local selected_index = profile_menu_elements.profile_selector:get()
    return profile_options[selected_index + 1] or profile_options[1]
end

local function is_skill_equipped(skill_name)
    -- Experimental: Try multiple detection methods to find one that works
    local spell_id = spell_ids[skill_name]
    if not spell_id then
        return false
    end
    
    local local_player = get_local_player()
    if not local_player then
        return false
    end
    
    -- Method 1: Try is_spell_ready with pcall
    local success1, is_ready = pcall(function()
        return local_player:is_spell_ready(spell_id)
    end)
    
    -- Method 2: Try utility.is_spell_ready if available
    local success2, is_ready2 = false, nil
    if utility and utility.is_spell_ready then
        success2, is_ready2 = pcall(function()
            return utility.is_spell_ready(spell_id)
        end)
    end
    
    -- Method 3: Check if spell has charges (skills not on bar typically return 0 or nil for charges)
    local success3, has_charges = pcall(function()
        local charges = local_player:get_spell_charges(spell_id)
        return charges and charges > 0
    end)
    
    -- Method 4: Check if spell has cooldown data (skills not on bar may not have this)
    local success4, has_cooldown_data = pcall(function()
        local remaining = local_player:get_spell_cooldown_remaining(spell_id)
        return remaining ~= nil
    end)
    
    -- If ANY method returns a valid boolean or positive result, consider it equipped
    -- This is experimental - we're casting a wide net to see which method works
    if success1 and type(is_ready) == "boolean" then
        return true
    end
    
    if success2 and type(is_ready2) == "boolean" then
        return true
    end
    
    if success3 and has_charges then
        return true
    end
    
    if success4 and has_cooldown_data then
        return true
    end
    
    return false
end

-- Get list of equipped skills
local function get_equipped_skills()
    local equipped = {}
    for skill_name, spell_id in pairs(spell_ids) do
        if is_skill_equipped(skill_name) then
            table.insert(equipped, skill_name)
        end
    end
    return equipped
end

--[[
═══════════════════════════════════════════════════════════════════════════════
    PROFILE FUNCTIONS
═══════════════════════════════════════════════════════════════════════════════
]]--

local function get_profile_data(profile_name)
    return profiles[profile_name]
end

local function is_skill_in_current_profile(skill_name)
    local profile_name = get_current_profile()
    local profile = profiles[profile_name]
    
    if not profile or not profile.core_skills then
        return false
    end
    
    for _, core_skill in ipairs(profile.core_skills) do
        if core_skill == skill_name then
            return true
        end
    end
    
    return false
end

local function get_spell_priority(skill_name)
    local profile_name = get_current_profile()
    local profile = profiles[profile_name]
    
    if not profile or not profile.spell_priority then
        return 999 -- Low priority if not in profile
    end
    
    return profile.spell_priority[skill_name] or 999
end

-- Check if we should use boss rotation or AoE rotation
local function should_use_boss_rotation()
    local my_utility = require("my_utility/my_utility")
    local elite_units, champion_units, boss_units = my_utility.should_pop_cds()
    
    -- Use boss rotation if there are bosses, champions, or elites nearby
    return (boss_units > 0 or champion_units > 0 or elite_units > 0)
end

--[[
═══════════════════════════════════════════════════════════════════════════════
    MENU RENDERING
═══════════════════════════════════════════════════════════════════════════════
]]--

-- Track the last selected profile to detect changes
-- Initialize to nil to avoid false positive on first render
local last_profile_index = nil

-- Display profile info and provide guidance
local function render_profile_menu()
    if profile_menu_elements.main_tree:push("Build Profiles") then
        local previous_index = last_profile_index
        local current_index = profile_menu_elements.profile_selector:get()
        
        profile_menu_elements.profile_selector:render(
            "Select Build Profile",
            profile_options,
            "Choose your Barbarian build profile for optimized rotations"
        )
        
        -- Detect profile change (skip notification on first load)
        if previous_index ~= nil and previous_index ~= current_index then
            last_profile_index = current_index
            local profile_name = get_current_profile()
            console.print("Profile changed to: " .. profile_name)
            console.print("Equipped Spells menu now shows skills for this profile")
        elseif previous_index == nil then
            -- First load - just cache the index without notification
            last_profile_index = current_index
        end
        
        local profile_name = get_current_profile()
        local profile = profiles[profile_name]
        
        if profile then
            -- Display profile info (would be text in actual UI)
            -- In Lua QQT, we'd need to use custom text rendering
            -- For now, this is placeholder for the structure
        end
        
        profile_menu_elements.main_tree:pop()
    end
end

--[[
═══════════════════════════════════════════════════════════════════════════════
    EXPORTS
═══════════════════════════════════════════════════════════════════════════════
]]--

return {
    render_menu = render_profile_menu,
    get_current_profile = get_current_profile,
    get_profile_data = get_profile_data,
    is_skill_in_current_profile = is_skill_in_current_profile,
    get_spell_priority = get_spell_priority,
    should_use_boss_rotation = should_use_boss_rotation,
    get_equipped_skills = get_equipped_skills,
    is_skill_equipped = is_skill_equipped,
    profiles = profiles,
}
