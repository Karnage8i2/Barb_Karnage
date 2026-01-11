-- HOTA Build Configuration for Barbarian (Sagittarian Leveling Build)
-- This configuration provides optimized settings for a Hammer of the Ancients focused build
-- Based on the Mobalytics Sagittarian leveling build guide

local hota_build_config = {
    -- Build name and description
    name = "HOTA Sagittarian Leveling",
    description = "Hammer of the Ancients focused build optimized for leveling",
    
    -- Spell Priority Configuration
    -- Higher priority = cast first (lower number = higher priority)
    spell_priority = {
        -- Defensive/Buff Skills (Highest Priority - Cast on Cooldown)
        challenging_shout = 1,
        war_cry = 2,
        rallying_cry = 3,
        iron_skin = 4,
        
        -- Ultimate/Major Cooldowns
        wrath_of_the_berserk = 5,
        call_of_the_ancients = 6,
        iron_maelstorm = 7,        -- Optional ultimate AOE
        
        -- Utility/Control
        steel_grasp = 8,      -- Group enemies for HOTA
        ground_stomp = 9,     -- CC for survivability
        charge = 10,           -- Mobility/Gap closer
        leap = 11,            -- Alternative mobility
        
        -- Main Damage Rotation
        hammer_of_ancients = 12,  -- Main damage dealer
        bash = 13,                 -- Fury generator + HOTA buff stacks
        
        -- Filler/Alternative skills (Lower Priority)
        upheaval = 14,
        double_swing = 15,
        rend = 16,
        death_blow = 17,
        rupture = 18,
        frenzy = 19,
        whirl_wind = 20,
        flay = 21,
        lunging_strike = 22,
        kick = 23,
        mighty_throw = 24,
    },
    
    -- Recommended Settings for Each Spell
    spell_settings = {
        hammer_of_ancients = {
            enabled = true,
            only_bash_buffed = true,      -- Wait for 2 Bash stacks before using
            min_targets = 1,               -- Use on single target (it's your main damage)
            notes = "Your primary damage ability. Use after building 2 Bash stacks."
        },
        
        bash = {
            enabled = true,
            use_as_filler = false,        -- Use actively to generate fury and stacks
            spell_range = 1.60,
            max_angle = 180,
            notes = "Fury generator. Build 2 stacks to buff Hammer of the Ancients."
        },
        
        war_cry = {
            enabled = true,
            filter_mode = 0,              -- No filter (0 = use always when available)
            min_enemies = 1,              -- Use even on single enemy for buff
            notes = "Damage buff. Keep this active at all times."
        },
        
        rallying_cry = {
            enabled = true,
            filter_mode = 0,              -- No filter
            min_enemies = 3,              -- Use when engaging packs
            notes = "Movement speed and resource generation. Use before engaging."
        },
        
        challenging_shout = {
            enabled = true,
            filter_mode = 0,              -- No filter
            min_enemies = 3,              -- Use for survivability in packs
            notes = "Defensive shout. Reduces enemy damage and taunts."
        },
        
        iron_skin = {
            enabled = true,
            notes = "Defensive cooldown. Provides damage reduction."
        },
        
        steel_grasp = {
            enabled = true,
            mode = "Auto",                -- Auto mode
            min_hits = 3,                 -- Group at least 3 enemies
            allow_percentage_hits = true,
            min_percentage_hits = 0.50,
            spell_range = 8.0,
            spell_radius = 3.25,
            notes = "Pull enemies together for better HOTA value."
        },
        
        ground_stomp = {
            enabled = true,
            notes = "Stun enemies for survivability and setup."
        },
        
        charge = {
            enabled = true,
            notes = "Mobility for repositioning and gap closing."
        },
        
        leap = {
            enabled = false,              -- Disable if using Charge (pick one mobility)
            notes = "Alternative mobility. Disable if using Charge."
        },
        
        wrath_of_the_berserk = {
            enabled = true,
            filter_mode = 1,              -- Elite & Boss only
            min_enemies = 5,              -- Or 5+ enemies
            notes = "Ultimate. Use on elite packs or large groups."
        },
        
        call_of_the_ancients = {
            enabled = true,
            notes = "Ultimate. Use on bosses and tough encounters."
        },
        
        iron_maelstorm = {
            enabled = false,
            notes = "Optional ultimate. High AOE damage. Enable if using this instead of Call of the Ancients."
        },
        
        -- Disable alternative main skills to focus on HOTA
        upheaval = {
            enabled = false,
            notes = "Disabled - using HOTA as main damage ability."
        },
        
        double_swing = {
            enabled = false,
            notes = "Disabled - using HOTA rotation."
        },
        
        rend = {
            enabled = false,
            notes = "Disabled - focus on HOTA damage."
        },
        
        death_blow = {
            enabled = false,
            notes = "Disabled - not part of HOTA build."
        },
        
        rupture = {
            enabled = false,
            notes = "Disabled - not part of HOTA build."
        },
        
        frenzy = {
            enabled = false,
            notes = "Disabled - using Bash for fury generation."
        },
        
        whirl_wind = {
            enabled = false,
            notes = "Disabled - not part of HOTA build."
        },
        
        flay = {
            enabled = false,
            notes = "Disabled - using Bash instead."
        },
        
        lunging_strike = {
            enabled = false,
            notes = "Disabled - not needed with HOTA build."
        },
        
        kick = {
            enabled = false,
            notes = "Disabled - not part of core rotation."
        },
        
        mighty_throw = {
            enabled = false,
            notes = "Optional ranged skill. Enable if you need ranged attacks."
        },
    },
    
    -- Gameplay Tips
    gameplay_tips = {
        "1. Start combat with War Cry for damage buff",
        "2. Use Steel Grasp to group enemies when possible",
        "3. Build 2 Bash stacks by hitting enemies",
        "4. Unleash Hammer of the Ancients when you have 2 Bash stacks",
        "5. Repeat Bash -> HOTA cycle",
        "6. Use Charge for mobility and repositioning",
        "7. Pop Rallying Cry and Challenging Shout on large packs",
        "8. Save Wrath of the Berserk for elite packs or tough fights",
        "9. Manage your fury - Bash generates, HOTA spends",
        "10. Ground Stomp for emergency CC when surrounded"
    },
    
    -- Resource Management
    resource_management = {
        fury_threshold_for_bash = 50,  -- Use Bash when fury is below 50%
        fury_threshold_for_hota = 35,  -- Need at least 35 fury for HOTA
        always_maintain_bash_stacks = true,
    }
}

return hota_build_config
