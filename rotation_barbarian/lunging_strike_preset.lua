--[[
═══════════════════════════════════════════════════════════════════════════════
    LUNGING STRIKE BARBARIAN BUILD PRESET
    Based on: https://maxroll.gg/d4/build-guides/lunging-strike-barbarian-guide
    
    Build Focus: Mobile basic attack build with Lunging Strike and Upheaval
    Optimized for: High mobility, sustained single-target damage, gap closing
    
    Features:
    - Lunging Strike for mobile basic attacks
    - Upheaval as core skill for burst damage
    - High mobility playstyle
    - Steel Grasp for grouping enemies
═══════════════════════════════════════════════════════════════════════════════
]]--

local lunging_strike_config = {
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        CORE DAMAGE SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Lunging Strike (Primary Attack / Fury Generator)
    lunging_strike = {
        enabled = true,
        use_as_filler_only = false,
        spell_range = 4.50,
        max_angle = 120,
        notes = "Primary attack with mobility - generates fury while repositioning"
    },
    
    -- Upheaval (Main Damage Dealer)
    upheaval = {
        enabled = true,
        notes = "Primary damage skill - use after building fury with Lunging Strike"
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
        notes = "Enhanced mobility for Lunging Strike playstyle"
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
        notes = "Use on bosses and elite packs for burst damage"
    },
    
    -- Call of the Ancients
    call_of_the_ancients = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Extra damage and distraction"
    },
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        UTILITY SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Steel Grasp
    steel_grasp = {
        enabled = true,
        priority = "HIGH",
        notes = "Pull enemies together for Upheaval burst"
    },
    
    -- Charge
    charge = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Gap closer - works well with Lunging Strike"
    },
    
    -- Ground Stomp
    ground_stomp = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Crowd control for dangerous elite packs"
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
        "bash",
        "frenzy",
        "flay",
        "double_swing",
        "rend",
        "kick",
        "leap",
        "rupture",
        "death_blow",
        "iron_maelstorm",
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
            "Keep all shouts active (War Cry, Rallying Cry, Challenging Shout)",
            "Use Wrath + Ancients on cooldown",
            "Lunging Strike to boss for fury and mobility",
            "Upheaval when you have high fury (60+)",
            "Charge to gap close when boss moves away",
            "Iron Skin when taking heavy damage",
            "Repeat: Lunging Strike → Build Fury → Upheaval cycle"
        },
        
        aoe_priority = {
            "Steel Grasp to group enemies",
            "Keep War Cry active for damage",
            "Lunging Strike through grouped enemies",
            "Upheaval on grouped targets for burst",
            "Ground Stomp for control if overwhelmed",
            "Use Rallying Cry for repositioning",
            "Charge between packs for speed",
            "Challenging Shout if surrounded"
        },
        
        notes = {
            "Boss fights: Focus on Lunging Strike for fury, Upheaval for damage",
            "Trash packs: Steel Grasp first, then Upheaval on grouped mobs",
            "Lunging Strike provides both damage and mobility - use it liberally",
            "Fury management: Build with Lunging Strike, spend with Upheaval",
            "High mobility playstyle - constantly moving with Lunging Strike"
        }
    },
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    USAGE INSTRUCTIONS
═══════════════════════════════════════════════════════════════════════════════

1. SELECT LUNGING STRIKE PROFILE:
   - Open Build Profiles menu
   - Select "Lunging Strike" from dropdown

2. ENABLE THESE SKILLS IN EQUIPPED SKILLS MENU:
   ✓ Lunging Strike (set "Spell Range" to 4.5, "Max Angle" to 120)
   ✓ Upheaval
   ✓ War Cry
   ✓ Rallying Cry
   ✓ Challenging Shout
   ✓ Wrath of the Berserk
   ✓ Call of the Ancients
   ✓ Steel Grasp
   ✓ Charge
   ✓ Ground Stomp
   ✓ Iron Skin

3. CONFIGURE LUNGING STRIKE SETTINGS:
   - Spell Range: 4.5
   - Max Angle: 120
   - Filler Only: Disabled

4. DISABLE ALL OTHER SKILLS

5. PLAYSTYLE TIPS:
   - Use Lunging Strike constantly for mobility and fury
   - Upheaval when you have 60+ fury
   - Keep all shouts active
   - Steel Grasp to group enemies before Upheaval
   - Charge for gap closing between packs
   - Very mobile playstyle - always moving with Lunging Strike

6. BOSS FIGHT STRATEGY:
   - Open with all shouts + Wrath + Ancients
   - Lunging Strike repeatedly to boss
   - Upheaval when fury is high
   - Charge to close gaps
   - Iron Skin when below 50% HP
   - Repeat: Lunging Strike spam → Upheaval

7. TRASH MOB STRATEGY:
   - Steel Grasp to pull mobs together
   - Ground Stomp if dangerous
   - Lunging Strike through grouped mobs
   - Upheaval for burst AoE damage
   - Charge to next pack

═══════════════════════════════════════════════════════════════════════════════
]]--

return lunging_strike_config
