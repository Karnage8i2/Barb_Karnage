--[[
═══════════════════════════════════════════════════════════════════════════════
    BARBARIAN SPELL DATA
    
    This module contains spell name to spell ID mappings for Barbarian skills.
    Used by the Equipped Skills detection system to identify which spells
    are currently on the player's skill bar.
    
    Updated with correct spell IDs based on game detection.
    All profiles (HOTA, Earthquake, Lunging Strike, Whirlwind, Bash) will now
    work correctly with the Equipped Skills system.
═══════════════════════════════════════════════════════════════════════════════
]]--

return {
    -- Basic Skills
    bash = {
        spell_id = 200765,
        name = "Bash"
    },
    lunging_strike = {
        spell_id = 206504,
        name = "Lunging Strike"
    },
    frenzy = {
        spell_id = 210919,
        name = "Frenzy"
    },
    flay = {
        spell_id = 210431,
        name = "Flay"
    },
    
    -- Core Skills
    hammer_of_ancients = {
        spell_id = 213673,
        name = "Hammer of the Ancients"
    },
    whirl_wind = {
        spell_id = 206435,
        name = "Whirlwind"
    },
    upheaval = {
        spell_id = 202484,
        name = "Upheaval"
    },
    double_swing = {
        spell_id = 208000,
        name = "Double Swing"
    },
    rend = {
        spell_id = 214786,
        name = "Rend"
    },
    
    -- Defensive Skills
    rallying_cry = {
        spell_id = 204662,
        name = "Rallying Cry"
    },
    challenging_shout = {
        spell_id = 375484,
        name = "Challenging Shout"
    },
    war_cry = {
        spell_id = 194096,
        name = "War Cry"
    },
    iron_skin = {
        spell_id = 512222,
        name = "Iron Skin"
    },
    
    -- Brawling Skills
    kick = {
        spell_id = 199516,
        name = "Kick"
    },
    charge = {
        spell_id = 204662,
        name = "Charge"
    },
    leap = {
        spell_id = 196545,
        name = "Leap"
    },
    rupture = {
        spell_id = 215027,
        name = "Rupture"
    },
    
    -- Weapon Mastery Skills
    death_blow = {
        spell_id = 323105,
        name = "Death Blow"
    },
    mighty_throw = {
        spell_id = 1611316,
        name = "Mighty Throw"
    },
    
    -- Ultimate Skills
    wrath_of_the_berserk = {
        spell_id = 211871,
        name = "Wrath of the Berserk"
    },
    call_of_the_ancients = {
        spell_id = 309802,
        name = "Call of the Ancients"
    },
    iron_maelstorm = {
        spell_id = 217175,
        name = "Iron Maelstrom"
    },
    
    -- Utility Skills
    steel_grasp = {
        spell_id = 964631,
        name = "Steel Grasp"
    },
    ground_stomp = {
        spell_id = 186358,
        name = "Ground Stomp"
    },
    
    -- Additional spell IDs found from API detection
    -- These are normal versions with different spell IDs
    rallying_cry_alt = {
        spell_id = 375484,
        name = "Rallying Cry"
    },
    war_cry_alt = {
        spell_id = 184600,
        name = "War Cry"
    },
    challenging_shout_alt = {
        spell_id = 211938,
        name = "Challenging Shout"
    },
}
