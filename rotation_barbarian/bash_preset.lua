--[[
═══════════════════════════════════════════════════════════════════════════════
    BASH BARBARIAN BUILD PRESET
    Based on: https://maxroll.gg/d4/planner/qj3hm0ys#3
    
    Build Focus: Basic Bash-focused build with Double Swing for AoE
    Optimized for: High attack speed, sustained single-target, basic attack synergies
    
    Features:
    - Bash as primary single-target damage
    - Double Swing for AoE cleave
    - High attack speed playstyle
    - Simple but effective rotation
═══════════════════════════════════════════════════════════════════════════════
]]--

local bash_config = {
    
    --[[
    ═══════════════════════════════════════════════════════════════════════
        CORE DAMAGE SKILLS
    ═══════════════════════════════════════════════════════════════════════
    ]]--
    
    -- Bash (Primary Single-Target)
    bash = {
        enabled = true,
        use_as_filler_only = false,      -- Use actively, not just as filler
        spell_range = 1.60,
        max_angle = 180,
        notes = "Primary single-target damage and fury generator"
    },
    
    -- Double Swing (AoE Cleave)
    double_swing = {
        enabled = true,
        notes = "Secondary skill for AoE damage around player"
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
        notes = "Keep active for damage buff - critical for Bash damage"
    },
    
    -- Rallying Cry (Movement + Resource)
    rallying_cry = {
        enabled = true,
        priority = "HIGH",
        notes = "Resource generation and mobility"
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
        notes = "Massive attack speed and damage boost for Bash spam"
    },
    
    -- Call of the Ancients
    call_of_the_ancients = {
        enabled = true,
        priority = "ULTIMATE",
        notes = "Extra damage and tanking"
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
        notes = "Pull enemies together for Double Swing cleave"
    },
    
    -- Charge
    charge = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Gap closer and positioning"
    },
    
    -- Ground Stomp
    ground_stomp = {
        enabled = true,
        priority = "MEDIUM",
        notes = "Crowd control for survivability"
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
        "upheaval",
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
            "Maintain all shouts (War Cry, Rallying Cry, Challenging Shout)",
            "Use Wrath + Ancients for massive burst windows",
            "Spam Bash on boss continuously",
            "Double Swing if adds spawn around boss",
            "Charge to close gaps when boss moves",
            "Iron Skin when taking heavy damage",
            "Focus: Non-stop Bash spam during Wrath burst"
        },
        
        aoe_priority = {
            "Steel Grasp to group enemies together",
            "War Cry for damage buff",
            "Bash spam on grouped enemies",
            "Double Swing for AoE cleave damage",
            "Ground Stomp for control if overwhelmed",
            "Challenging Shout if surrounded",
            "Charge between packs for mobility"
        },
        
        notes = {
            "Boss fights: Pure Bash spam - simple but effective",
            "Trash packs: Steel Grasp first, then Bash + Double Swing",
            "Very simple rotation: Bash is your main skill",
            "War Cry is critical - massive damage boost",
            "Wrath of Berserk = insane Bash spam speed",
            "Double Swing for when enemies surround you"
        }
    },
}

--[[
═══════════════════════════════════════════════════════════════════════════════
    USAGE INSTRUCTIONS
═══════════════════════════════════════════════════════════════════════════════

1. SELECT BASH PROFILE:
   - Open Build Profiles menu
   - Select "Bash" from dropdown

2. ENABLE THESE SKILLS IN EQUIPPED SKILLS MENU:
   ✓ Bash (set "Spell Range" to 1.6, "Max Angle" to 180)
   ✓ Double Swing
   ✓ War Cry
   ✓ Rallying Cry
   ✓ Challenging Shout
   ✓ Wrath of the Berserk
   ✓ Call of the Ancients
   ✓ Steel Grasp
   ✓ Charge
   ✓ Ground Stomp
   ✓ Iron Skin

3. CONFIGURE BASH SETTINGS:
   - Spell Range: 1.6
   - Max Angle: 180
   - Filler Only: Disabled

4. DISABLE ALL OTHER SKILLS

5. PLAYSTYLE TIPS:
   - Bash is your main damage skill - spam it constantly
   - Use Double Swing when surrounded
   - Keep War Cry active at all times
   - Steel Grasp to group enemies
   - Very simple, straightforward playstyle
   - Focus on maintaining high uptime on Bash

6. BOSS FIGHT STRATEGY:
   - Open with all shouts
   - Pop Wrath + Ancients
   - Bash spam continuously
   - During Wrath, attack speed is insane - pure Bash
   - Charge to close gaps
   - Iron Skin when below 50% HP
   - Simple rotation: Just keep Bashing!

7. TRASH MOB STRATEGY:
   - Steel Grasp to pull mobs
   - War Cry for damage
   - Bash spam on grouped enemies
   - Double Swing for AoE when surrounded
   - Ground Stomp for control
   - Charge to next pack

8. SIMPLICITY IS KEY:
   - This is the simplest Barbarian build
   - Main damage: Bash
   - AoE damage: Double Swing
   - Buffs: Keep shouts active
   - Burst: Wrath + Ancients + Bash spam
   - That's it!

═══════════════════════════════════════════════════════════════════════════════
]]--

return bash_config
