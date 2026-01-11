--[[
═══════════════════════════════════════════════════════════════════════════════
    EARTHQUAKE BARBARIAN BUILD PRESET
    Based on: https://maxroll.gg/d4/build-guides/earthquake-barbarian-guide
    
    NOTE: "Earthquake" is the profile name only. This build uses Upheaval as the 
    primary damage skill (there is no Earthquake spell in Diablo 4).
    
    Build Focus: Upheaval as primary damage dealer with Leap for mobility
    Optimized for: AoE damage, mob clearing, and burst damage
    
    Features:
    - Upheaval for massive burst AoE damage
    - Leap for positioning and mobility
    - Shout rotation for survivability
    - Fury management with Bash
═══════════════════════════════════════════════════════════════════════════════
]]--

local earthquake_config = {
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        CORE DAMAGE SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Upheaval (Primary Damage Dealer)
    upheaval = {
        enabled = true,
        notes = "Primary damage skill - massive AoE burst damage"
    },
    
    -- Leap (Mobility + Positioning)
    leap = {
        enabled = true,
        notes = "Use to position for Upheaval and mobility"
    },
    
    -- Bash (Fury Generator)
    bash = {
        enabled = true,
        use_as_filler_only = false,
        spell_range = 1.60,
        max_angle = 180,
        notes = "Fury generator for resource management"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        SHOUT ROTATION - BUFFS & SURVIVABILITY
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- War Cry (Damage buff)
    war_cry = {
        enabled = true,
        priority = "HIGH",
        notes = "Keep active for damage buff"
    },
    
    -- Rallying Cry (Movement + Resource)
    rallying_cry = {
        enabled = true,
        priority = "HIGH",
        notes = "Mobility and survivability"
    },
    
    -- Challenging Shout (Defense)
    challenging_shout = {
        enabled = true,
        priority = "HIGH",
        notes = "Primary defensive cooldown"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        ULTIMATES
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Wrath of the Berserk
    wrath_of_the_berserk = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Use on bosses and elite packs"
    },
    
    -- Call of the Ancients
    call_of_the_ancients = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Summon for extra damage and tanking"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        UTILITY SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Ground Stomp
    ground_stomp = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Crowd control for dangerous situations"
    },
    
    -- Iron Skin
    iron_skin = {
        enabled = true,
        priority = "DEFENSIVE",
        notes = "Emergency survivability"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        DISABLED SKILLS - NOT PART OF BUILD
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    disabled_skills = {
        "hammer_of_ancients",
        "whirl_wind",
        "lunging_strike",
        "frenzy",
        "flay",
        "double_swing",
        "rend",
        "kick",
        "charge",          -- Leap is preferred for mobility
        "rupture",
        "death_blow",
        "iron_maelstorm",
        "steel_grasp",
        "mighty_throw"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        ROTATION PRIORITIES
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    rotation = {
        boss_priority = {
            "Leap to boss position",
            "Cast Upheaval for burst damage",
            "Maintain all shouts (War Cry, Rallying Cry, Challenging Shout)",
            "Pop Wrath + Ancients for burst phases",
            "Use Bash to maintain fury",
            "Re-position with Leap as needed",
            "Cast Upheaval on cooldown for sustained damage",
            "Iron Skin when taking heavy damage"
        },
        
        aoe_priority = {
            "Leap into center of mob pack",
            "Cast Upheaval immediately for AoE burst",
            "Keep War Cry active for damage",
            "Ground Stomp for control if overwhelmed",
            "Bash to maintain fury between Upheavals",
            "Use Rallying Cry for repositioning",
            "Focus Upheaval on high-density areas",
            "Challenging Shout if surrounded"
        },
        
        notes = {
            "Boss fights: Focus on Upheaval burst windows and fury management",
            "Trash packs: Leap in, Upheaval for burst, control with Ground Stomp",
            "Upheaval provides massive burst AoE damage",
            "Leap provides both mobility and setup for Upheaval positioning",
            "Maintain fury with Bash to keep casting Upheaval"
        }
    },
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    USAGE INSTRUCTIONS
═══════════════════════════════════════════════════════════════════════════════

1. SELECT EARTHQUAKE PROFILE:
   - Open Build Profiles menu
   - Select "Earthquake" from dropdown

2. ENABLE THESE SKILLS IN EQUIPPED SKILLS MENU:
   ✓ Upheaval (primary damage skill)
   ✓ Leap
   ✓ Bash
   ✓ War Cry
   ✓ Rallying Cry
   ✓ Challenging Shout
   ✓ Wrath of the Berserk
   ✓ Call of the Ancients
   ✓ Ground Stomp
   ✓ Iron Skin

3. DISABLE ALL OTHER SKILLS

4. PLAYSTYLE TIPS:
   - Leap into enemy groups for positioning
   - Cast Upheaval for massive burst damage
   - Use Bash to maintain fury
   - Keep all shouts active for survivability
   - Ground Stomp for crowd control when needed

5. BOSS FIGHT STRATEGY:
   - Leap to boss
   - Cast Upheaval on cooldown for burst damage
   - Maintain shouts
   - Use Wrath + Ancients for burst
   - Bash for fury management
   - Re-position with Leap if boss moves

6. TRASH MOB STRATEGY:
   - Leap into center of pack
   - Cast Upheaval for AoE burst
   - Ground Stomp if needed for control
   - Bash to maintain fury
   - Move to next pack quickly

═══════════════════════════════════════════════════════════════════════════════
]]--

return earthquake_config
