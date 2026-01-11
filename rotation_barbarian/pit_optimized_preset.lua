--[[
═══════════════════════════════════════════════════════════════════════════════
    PIT-OPTIMIZED HOTA BARBARIAN BUILD PRESET
    Based on: https://d4builds.gg/builds/35e0478f-ff44-41be-935e-90f8cdc0a461/
    
    Optimized for: Pit Pushing, Boss Fights, High-Tier Endgame Content
    Build Focus: Hammer of the Ancients (HOTA) with optimized rotations
    
    Features:
    - Boss-optimized rotation with proper proximity management
    - AOE optimization for trash mob clearing
    - Improved Fury management for sustained DPS
    - Enhanced survivability with defensive shout rotation
═══════════════════════════════════════════════════════════════════════════════
]]--

local pit_optimized_config = {
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        CORE DAMAGE SKILLS - HOTA FOCUSED
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Hammer of the Ancients (Primary Damage Dealer)
    hammer_of_ancients = {
        enabled = true,
        only_bash_buffed = true,        -- CRITICAL: Only cast with Bash stacks
        bash_buff_number = 2,            -- Require 2 bash stacks for maximum damage
        min_max_targets = 1,             -- Cast on single target (bosses) or groups
        notes = "Primary damage skill - optimized for Pit bosses and elites"
    },
    
    -- Bash (Fury Generator + Stack Builder)
    bash = {
        enabled = true,
        min_max_targets = 1,             -- Always bash to build stacks
        notes = "Essential for HOTA buff stacks and Fury generation"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        SHOUT ROTATION - BUFFS & SURVIVABILITY
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- War Cry (Damage buff + Fury generation)
    war_cry = {
        enabled = true,
        priority = "HIGH",
        notes = "Keep active for damage buff - cast on cooldown"
    },
    
    -- Rallying Cry (Movement speed + Resource regen + Unstoppable)
    rallying_cry = {
        enabled = true,
        priority = "HIGH",
        notes = "Mobility and survivability - use for repositioning in Pit"
    },
    
    -- Challenging Shout (Damage reduction + Thorns)
    challenging_shout = {
        enabled = true,
        priority = "HIGH",
        notes = "Primary defensive cooldown - use when surrounded or low HP"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        ULTIMATES - HIGH BURST PHASES
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Wrath of the Berserk (Major damage buff)
    wrath_of_the_berserk = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Use on bosses and elite packs - massive damage increase"
    },
    
    -- Call of the Ancients (Summon allies)
    call_of_the_ancients = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Extra damage and distraction - good for bosses"
    },
    
    -- Iron Maelstrom (AOE Ultimate - OPTIONAL)
    iron_maelstrom = {
        enabled = false,                 -- Disabled by default, enable for heavy AOE scenarios
        priority = "ULTIMATE",
        notes = "Alternative ultimate for dense mob packs - not optimal for single target"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        UTILITY SKILLS - POSITIONING & CONTROL
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Steel Grasp (Pull enemies together)
    steel_grasp = {
        enabled = true,
        priority = "HIGH",
        notes = "Group mobs for AOE HOTA damage - excellent for Pit trash"
    },
    
    -- Charge (Mobility + Fury generation)
    charge = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Gap closer for bosses, mobility between packs"
    },
    
    -- Ground Stomp (Stun + Grouping)
    ground_stomp = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Crowd control for dangerous elite packs"
    },
    
    -- Iron Skin (Damage reduction barrier)
    iron_skin = {
        enabled = true,
        priority = "DEFENSIVE",
        notes = "Emergency survivability cooldown"
    },
    
    -- Rupture (Bleeding damage + Execute)
    rupture = {
        enabled = true,
        priority = "MEDIUM",
        min_range = 3,               -- Cast on targets 3m+ away for ranged pressure
        notes = "Apply bleeding to multiple targets, execute low HP enemies"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        DISABLED SKILLS - NOT PART OF PIT BUILD
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    disabled_skills = {
        "mighty_throw",      -- Not needed for melee HOTA build
        "kick",              -- Not part of optimal rotation
        "leap",              -- Charge is preferred for mobility
        "upheaval",          -- Conflicts with HOTA focus
        "double_swing",      -- Not part of build
        "rend",              -- Not part of build
        "death_blow",        -- Not part of build
        "frenzy",            -- Bash is our fury generator
        "whirl_wind",        -- Not part of build
        "flay",              -- Not part of build
        "lunging_strike"     -- Not part of build
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        ROTATION PRIORITIES
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    rotation = {
        boss_priority = {
            "Keep all shouts active (War Cry, Rallying Cry, Challenging Shout)",
            "Pop Wrath of the Berserk + Call of the Ancients for burst phases",
            "Apply Rupture for bleeding damage (if boss moves out of melee)",
            "Bash x2 to build stacks",
            "Hammer of the Ancients (with Bash buff)",
            "Charge to close gaps when boss moves",
            "Iron Skin when taking heavy damage",
            "Repeat: Bash x2 → HOTA cycle"
        },
        
        aoe_priority = {
            "Steel Grasp to pull mobs together",
            "Apply Rupture to spread bleeding damage across the pack",
            "Keep War Cry active for damage",
            "Ground Stomp to control dangerous packs",
            "Bash x2 on grouped enemies",
            "Hammer of the Ancients on stacked mobs (3m AOE radius)",
            "Use Rallying Cry for repositioning",
            "Challenging Shout if surrounded"
        },
        
        notes = {
            "Boss fights: Focus on maintaining Bash stacks and HOTA uptime",
            "Trash packs: Use Steel Grasp first, then AOE HOTA",
            "Always stay within 3m of target for HOTA to connect",
            "Fury management: Bash generates fury, HOTA spends it",
            "Defensive: Use all 3 shouts in rotation for damage reduction"
        }
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        PIT-SPECIFIC OPTIMIZATIONS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    pit_optimizations = {
        proximity = {
            max_range = 3.5,             -- Stay close to targets for HOTA
            chase_distance = 5.0,        -- How far to chase fleeing enemies
            boss_stick_range = 2.5,      -- Ideal distance from bosses
            notes = "Reduced ranges ensure character stays in melee range for HOTA (3m effective)"
        },
        
        boss_mechanics = {
            burst_window = true,         -- Use all cooldowns during DPS windows
            defensive_priority = true,   -- Prioritize staying alive over damage
            phase_awareness = true,      -- Adapt rotation to boss phases
            notes = "Focus on maximizing damage during burst windows while maintaining survivability"
        },
        
        trash_clearing = {
            group_first = true,          -- Always Steel Grasp before HOTA
            aoe_threshold = 3,           -- Min enemies for AOE focus
            speed_priority = true,       -- Move quickly between packs
            notes = "Efficient trash clearing is key to Pit timer management"
        }
    }
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    USAGE INSTRUCTIONS
═══════════════════════════════════════════════════════════════════════════════

1. ENABLE THESE SKILLS IN ACTIVE SKILLS MENU:
   ✓ Hammer of the Ancients (check "Only Bash Buffed")
   ✓ Bash
   ✓ War Cry
   ✓ Rallying Cry
   ✓ Challenging Shout
   ✓ Wrath of the Berserk
   ✓ Call of the Ancients
   ✓ Steel Grasp
   ✓ Charge
   ✓ Ground Stomp
   ✓ Iron Skin
   ✓ Rupture (set "Min Range" to 3m)

2. CONFIGURE HAMMER OF THE ANCIENTS:
   - Enable "Only Bash Buffed" checkbox
   - Set "Min/Max Targets" to 1
   - This ensures HOTA only casts with proper buffs

3. DISABLE THESE SKILLS IN INACTIVE SKILLS MENU:
   - All skills not listed in step 1

4. PLAYSTYLE TIPS:
   - Always maintain 3 shouts for defensive layers
   - Build 2 Bash stacks before each HOTA
   - Use Steel Grasp to group mobs for AOE damage
   - Stay within 3m of targets at all times
   - Save ultimates for elite packs and bosses
   - Use Charge to gap close when targets move away

5. BOSS FIGHT STRATEGY:
   - Open with all shouts + ultimates
   - Maintain close proximity (2-3m)
   - Bash x2 → HOTA → repeat
   - Use Iron Skin when below 50% HP
   - Re-apply shouts as they expire

6. TRASH MOB STRATEGY:
   - Steel Grasp to pull mobs
   - Ground Stomp if dangerous
   - Bash x2 on grouped mobs
   - HOTA for massive AOE damage
   - Move quickly to next pack

═══════════════════════════════════════════════════════════════════════════════
]]--

return pit_optimized_config
