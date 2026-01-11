--[[
═══════════════════════════════════════════════════════════════════════════════
    WHIRLWIND BARBARIAN BUILD PRESET
    Based on: https://maxroll.gg/d4/build-guides/whirlwind-barbarian-guide
    
    Build Focus: Channeled Whirlwind for sustained AoE damage
    Optimized for: Continuous damage output, mob clearing, mobility while dealing damage
    
    Features:
    - Whirlwind as primary channeled damage skill
    - Frenzy for fury generation and attack speed
    - High mobility while channeling
    - Sustained AoE damage output
═══════════════════════════════════════════════════════════════════════════════
]]--

local whirlwind_config = {
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        CORE DAMAGE SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Whirlwind (Primary Channeled Skill)
    whirl_wind = {
        enabled = true,
        use_as_filler_only = true,       -- Only use when fury is sufficient (30%+)
        notes = "Primary damage skill - channel through enemies for sustained AoE"
    },
    
    -- Frenzy (Fury Generator + Attack Speed)
    frenzy = {
        enabled = true,
        use_as_filler_only = false,
        notes = "Fury generator - builds attack speed stacks for Whirlwind"
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
        notes = "Keep active for damage buff - critical for Whirlwind damage"
    },
    
    -- Rallying Cry (Movement + Resource)
    rallying_cry = {
        enabled = true,
        priority = "HIGH",
        notes = "Movement speed synergizes well with Whirlwind mobility"
    },
    
    -- Challenging Shout (Defense)
    challenging_shout = {
        enabled = true,
        priority = "HIGH",
        notes = "Primary defensive cooldown - use when channeling in danger"
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
        notes = "Massive damage boost for Whirlwind - use on bosses and elites"
    },
    
    -- Call of the Ancients
    call_of_the_ancients = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Extra damage and tanking while you Whirlwind"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        UTILITY SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Charge
    charge = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Gap closer and positioning tool"
    },
    
    -- Ground Stomp
    ground_stomp = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Crowd control - stun enemies before Whirlwinding"
    },
    
    -- Iron Skin
    iron_skin = {
        enabled = true,
        priority = "DEFENSIVE",
        notes = "Emergency survivability while channeling"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        DISABLED SKILLS - NOT PART OF BUILD
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    disabled_skills = {
        "hammer_of_ancients",
        "lunging_strike",
        "bash",
        "flay",
        "upheaval",
        "double_swing",
        "rend",
        "kick",
        "leap",
        "rupture",
        "death_blow",
        "iron_maelstorm",
        "steel_grasp",
        "mighty_throw",
        "earthquake"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        ROTATION PRIORITIES
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    rotation = {
        boss_priority = {
            "Activate all shouts (War Cry, Rallying Cry, Challenging Shout)",
            "Pop Wrath + Ancients for massive burst",
            "Build Frenzy stacks (2-3 hits)",
            "Channel Whirlwind on boss position",
            "Maintain fury with Frenzy between Whirlwind channels",
            "Charge to reposition if boss moves",
            "Iron Skin when low HP",
            "Repeat: Frenzy → Whirlwind cycle"
        },
        
        aoe_priority = {
            "Charge into mob pack",
            "Activate War Cry for damage",
            "Ground Stomp for control",
            "Build Frenzy stacks",
            "Channel Whirlwind through entire pack",
            "Use Rallying Cry for speed boost",
            "Challenging Shout if taking heavy damage",
            "Keep Whirlwind active as long as fury allows"
        },
        
        notes = {
            "Boss fights: Whirlwind is your main damage - keep it channeling",
            "Trash packs: Charge in, Whirlwind through everything",
            "Fury management critical: Use Frenzy to maintain fury for Whirlwind",
            "Whirlwind allows movement while dealing damage - stay mobile",
            "War Cry is essential - massive damage increase for Whirlwind",
            "Build Frenzy stacks before starting Whirlwind for max damage"
        }
    },
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    USAGE INSTRUCTIONS
═══════════════════════════════════════════════════════════════════════════════

1. SELECT WHIRLWIND PROFILE:
   - Open Build Profiles menu
   - Select "Whirlwind" from dropdown

2. ENABLE THESE SKILLS IN EQUIPPED SKILLS MENU:
   ✓ Whirlwind (enable "Fury Check")
   ✓ Frenzy
   ✓ War Cry
   ✓ Rallying Cry
   ✓ Challenging Shout
   ✓ Wrath of the Berserk
   ✓ Call of the Ancients
   ✓ Charge
   ✓ Ground Stomp
   ✓ Iron Skin

3. CONFIGURE WHIRLWIND SETTINGS:
   - Fury Check: Enabled (prevents casting with low fury)

4. DISABLE ALL OTHER SKILLS

5. PLAYSTYLE TIPS:
   - Build Frenzy stacks before Whirlwinding
   - Channel Whirlwind when fury is 30%+ 
   - Keep War Cry active at all times
   - Move while channeling Whirlwind for maximum coverage
   - Use Frenzy to rebuild fury between channels
   - Charge for gap closing and positioning

6. BOSS FIGHT STRATEGY:
   - Open with all shouts
   - Pop Wrath + Ancients
   - Build 2-3 Frenzy stacks
   - Channel Whirlwind on boss
   - Frenzy to rebuild fury
   - Repeat Whirlwind when fury is sufficient
   - Charge to reposition
   - Iron Skin when below 50% HP

7. TRASH MOB STRATEGY:
   - Charge into pack
   - War Cry for damage
   - Ground Stomp for control
   - Build Frenzy stacks
   - Whirlwind through entire pack
   - Keep moving while channeling
   - Rallying Cry for speed

8. FURY MANAGEMENT:
   - Frenzy generates fury (use when below 50%)
   - Whirlwind consumes fury (use when above 30%)
   - War Cry provides fury generation buff
   - Maintain balance: Frenzy → Build Fury → Whirlwind → Repeat

═══════════════════════════════════════════════════════════════════════════════
]]--

return whirlwind_config
