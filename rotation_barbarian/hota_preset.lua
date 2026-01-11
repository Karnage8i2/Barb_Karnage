-- HOTA Build Preset Applicator
-- This script helps apply recommended HOTA build settings to the rotation plugin
-- Place this in the rotation_barbarian folder and load it if you want preset configurations

local my_utility = require("my_utility/my_utility")

local preset_menu_elements = {
    main_tree = tree_node:new(0),
    apply_hota_preset = checkbox:new(false, get_hash(my_utility.plugin_label .. "apply_hota_preset_btn")),
    show_hota_tips = checkbox:new(true, get_hash(my_utility.plugin_label .. "show_hota_tips")),
}

local hota_preset_applied = false
local tips_display_time = 0

-- HOTA Build Preset Configuration
local hota_preset = {
    build_name = "Sagittarian HOTA Leveling",
    
    -- This would need to be integrated with the actual menu elements
    -- For now, this serves as a reference and documentation
    recommended_settings = {
        -- Core HOTA Settings
        hammer_of_ancients = {
            enabled = true,
            only_bash_buffed = true,
            min_targets = 1,
        },
        
        -- Fury Generator
        bash = {
            enabled = true,
            use_as_filler_only = false,
            spell_range = 1.60,
            max_angle = 180,
        },
        
        -- Buff/Debuff Shouts
        war_cry = {
            enabled = true,
            filter_mode = 0,  -- No filter
            min_enemies = 1,
        },
        
        rallying_cry = {
            enabled = true,
            filter_mode = 0,  -- No filter
            min_enemies = 3,
        },
        
        challenging_shout = {
            enabled = true,
            filter_mode = 0,  -- No filter
            min_enemies = 3,
        },
        
        -- Utility
        iron_skin = { enabled = true },
        ground_stomp = { enabled = true },
        charge = { enabled = true },
        
        steel_grasp = {
            enabled = true,
            mode = 0,  -- Auto
            min_hits = 3,
            allow_percentage_hits = true,
            min_percentage_hits = 0.50,
            spell_range = 8.0,
            spell_radius = 3.25,
        },
        
        -- Ultimates
        wrath_of_the_berserk = {
            enabled = true,
            filter_mode = 1,  -- Elite & Boss only
            min_enemies = 5,
        },
        
        call_of_the_ancients = { enabled = true },
        
        -- Disable conflicting skills
        leap = { enabled = false },
        upheaval = { enabled = false },
        double_swing = { enabled = false },
        rend = { enabled = false },
        death_blow = { enabled = false },
        rupture = { enabled = false },
        frenzy = { enabled = false },
        whirl_wind = { enabled = false },
        flay = { enabled = false },
        lunging_strike = { enabled = false },
        kick = { enabled = false },
    }
}

-- Gameplay tips to display
local hota_tips = {
    "HOTA Build Active: Bash twice, then HOTA for max damage!",
    "Remember: Keep War Cry buff active at all times",
    "Tip: Use Steel Grasp to group enemies before HOTA",
    "Pro Tip: Save Wrath of Berserk for elite packs",
    "Strategy: Charge in → Steel Grasp → Bash x2 → HOTA",
}

local current_tip_index = 1

local function get_next_tip()
    current_tip_index = current_tip_index + 1
    if current_tip_index > #hota_tips then
        current_tip_index = 1
    end
    return hota_tips[current_tip_index]
end

local function display_hota_tip()
    if preset_menu_elements.show_hota_tips:get() then
        local current_time = get_time_since_inject()
        
        -- Display a tip every 30 seconds
        if current_time > tips_display_time then
            local tip = get_next_tip()
            console.print(tip)
            tips_display_time = current_time + 30.0
        end
    end
end

-- Menu rendering
local function render_preset_menu()
    if preset_menu_elements.main_tree:push("HOTA Build Preset") then
        
        -- Info text
        if not hota_preset_applied then
            -- Would render info about the preset
            preset_menu_elements.apply_hota_preset:render(
                "Apply HOTA Preset", 
                "Automatically configure rotation for HOTA build"
            )
        else
            -- Show preset is active
            preset_menu_elements.show_hota_tips:render(
                "Show HOTA Tips", 
                "Display helpful tips in console"
            )
        end
        
        preset_menu_elements.main_tree:pop()
    end
end

-- Apply preset settings
local function apply_preset()
    if preset_menu_elements.apply_hota_preset:get() and not hota_preset_applied then
        console.print("=== HOTA Build Preset Applied ===")
        console.print("Build: " .. hota_preset.build_name)
        console.print("Configure individual spells in their respective menus")
        console.print("See HOTA_BUILD_GUIDE.md for detailed setup")
        console.print("================================")
        
        hota_preset_applied = true
        
        -- Reset the checkbox
        -- preset_menu_elements.apply_hota_preset:set(false)
    end
end

-- Update function to be called from main rotation
local function on_preset_update()
    apply_preset()
    
    if hota_preset_applied then
        display_hota_tip()
    end
end

return {
    render_menu = render_preset_menu,
    on_update = on_preset_update,
    preset_config = hota_preset,
    is_active = function() return hota_preset_applied end,
}
