# Build Profile System Guide

## Overview

The Barbarian rotation plugin now includes a comprehensive Build Profile System that allows you to select from 5 optimized builds, each with their own rotation priorities and gameplay strategies.

## Available Build Profiles

### 1. **Hammer of the Ancients (HOTA)** 
*Based on: [Maxroll HOTA Guide](https://maxroll.gg/d4/build-guides/hammer-of-the-ancients-barbarian-guide)*

**Build Focus:** Bash stacking for massive Hammer of the Ancients damage
- **Primary Damage:** Hammer of the Ancients (with Bash buffs)
- **Fury Generator:** Bash (builds stacks for HOTA)
- **Utility:** Steel Grasp, Charge, Ground Stomp
- **Playstyle:** Build 2 Bash stacks → HOTA → Repeat
- **Best For:** High burst damage, boss killing, balanced gameplay

**Quick Setup:**
- Enable: HOTA, Bash, War Cry, Rallying Cry, Challenging Shout, Steel Grasp, Charge, Ground Stomp, Iron Skin, Wrath of Berserk, Call of Ancients
- Configure HOTA: Enable "Only Bash Buff" checkbox

---

### 2. **Earthquake**
*Based on: [Maxroll Earthquake Guide](https://maxroll.gg/d4/build-guides/earthquake-barbarian-guide)*

**NOTE:** "Earthquake" is the **profile name only** - there is no Earthquake spell in this build. This profile uses **Upheaval** as the primary damage skill.

**Build Focus:** Upheaval burst damage with Leap mobility
- **Primary Damage:** Upheaval (massive AoE burst)
- **Mobility:** Leap (positioning and gap closer)
- **Fury Generator:** Bash
- **Playstyle:** Leap in → Upheaval for burst → Repeat
- **Best For:** AoE damage, mob clearing, burst damage

**Quick Setup:**
- Enable: Upheaval, Leap, Bash, War Cry, Rallying Cry, Challenging Shout, Ground Stomp, Iron Skin, Wrath of Berserk, Call of Ancients

---

### 3. **Lunging Strike**
*Based on: [Maxroll Lunging Strike Guide](https://maxroll.gg/d4/build-guides/lunging-strike-barbarian-guide)*

**Build Focus:** Mobile basic attack with Upheaval burst damage
- **Primary Attack:** Lunging Strike (mobile fury generator)
- **Main Damage:** Upheaval
- **Utility:** Steel Grasp, Charge
- **Playstyle:** Lunging Strike for mobility/fury → Upheaval for burst
- **Best For:** High mobility, gap closing, sustained DPS

**Quick Setup:**
- Enable: Lunging Strike, Upheaval, War Cry, Rallying Cry, Challenging Shout, Steel Grasp, Charge, Ground Stomp, Iron Skin, Wrath of Berserk, Call of Ancients
- Configure Lunging Strike: Range = 4.5, Max Angle = 120

---

### 4. **Whirlwind**
*Based on: [Maxroll Whirlwind Guide](https://maxroll.gg/d4/build-guides/whirlwind-barbarian-guide)*

**Build Focus:** Channeled Whirlwind for sustained AoE damage
- **Primary Damage:** Whirlwind (channeled AoE)
- **Fury Generator:** Frenzy (also builds attack speed)
- **Utility:** Charge, Ground Stomp
- **Playstyle:** Build Frenzy stacks → Channel Whirlwind → Repeat
- **Best For:** Continuous AoE damage, mobile combat, spin-to-win

**Quick Setup:**
- Enable: Whirlwind, Frenzy, War Cry, Rallying Cry, Challenging Shout, Charge, Ground Stomp, Iron Skin, Wrath of Berserk, Call of Ancients
- Configure Whirlwind: Enable "Fury Check"

---

### 5. **Bash**
*Based on: [Maxroll Bash Build](https://maxroll.gg/d4/planner/qj3hm0ys#3)*

**Build Focus:** Simple basic attack spam with Double Swing AoE
- **Primary Damage:** Bash (continuous single-target)
- **AoE Damage:** Double Swing
- **Utility:** Steel Grasp, Charge
- **Playstyle:** Bash spam with occasional Double Swing
- **Best For:** Simple gameplay, high attack speed, basic attack builds

**Quick Setup:**
- Enable: Bash, Double Swing, War Cry, Rallying Cry, Challenging Shout, Steel Grasp, Charge, Ground Stomp, Iron Skin, Wrath of Berserk, Call of Ancients
- Configure Bash: Range = 1.6, Max Angle = 180

---

## How to Use the Profile System

### Step 1: Select Your Profile

1. Open the in-game menu
2. Find **"Build Profiles"** section
3. Use the dropdown to select your desired profile
4. The plugin will automatically prioritize spells based on the profile

### Step 2: Configure Equipped Spells

The plugin uses **"Equipped Spells"** with smart detection:

- **Equipped Spells**: Shows skills that are BOTH in your profile AND detected on your skill bar
- **Inactive Spells**: Shows all other spells (not in profile OR not on bar)
- Real-time detection: spells appear/disappear as you add/remove them from bar

**To configure a build:**
1. Select your profile in **"Build Profiles"** menu
2. Put the recommended skills on your skill bar in Diablo 4
3. **Equipped Spells** will automatically show ONLY the skills that are:
   - Part of your selected profile AND
   - Currently on your skill bar (auto-detected)
4. Enable/disable the detected spells you want active
5. Configure individual spell settings as needed

**Smart Detection:**
- Profile-based filtering: Only checks skills from your profile (not all 20+ skills)
- Skill bar detection: Only shows if actually on your 6-slot skill bar
- When you add a profile skill to your bar → it appears in "Equipped Spells"
- When you remove it from bar → it disappears from "Equipped Spells"
- Skills not in your profile never appear in "Equipped Spells"

**Example:**
- Select HOTA profile (has 11 recommended skills)
- Put 6 of them on your skill bar in-game
- "Equipped Spells" shows only those 6 detected skills
- The other 5 don't show (not on bar)


### Step 3: Understand the Rotation

Each profile has optimized rotations for:

#### Boss Rotation
Optimized for single-target, elite, and boss encounters:
- Focuses on burst damage
- Maintains buffs/shouts
- Uses ultimates effectively
- Prioritizes survivability cooldowns

#### AoE Rotation
Optimized for trash mobs and large packs:
- Emphasizes grouping skills (Steel Grasp, Ground Stomp)
- Maximizes AoE damage output
- Quick pack clearing
- Efficient movement between groups

## Preset Configuration Files

Each build has a detailed preset configuration file:

- `hota_preset.lua` - HOTA build
- `pit_optimized_preset.lua` - Enhanced HOTA for endgame
- `earthquake_preset.lua` - Earthquake build
- `lunging_strike_preset.lua` - Lunging Strike build
- `whirlwind_preset.lua` - Whirlwind build
- `bash_preset.lua` - Bash build

These files contain:
- Detailed skill configurations
- Rotation priorities
- Usage instructions
- Boss and AoE strategies
- Playstyle tips

## Spell Priority System

The profile system includes an intelligent spell priority system:

- **Lower number = Higher priority** (cast first)
- Spells are executed in order based on profile priorities
- Only skills in the current profile are used
- Dynamic rotation adapts to boss vs trash situations

**Default Priority Order:**
1. Defensive Shouts (Challenging Shout)
2. Damage Buffs (War Cry, Rallying Cry)
3. Survivability (Iron Skin)
4. Ultimates (Wrath, Call of Ancients)
5. Utility (Steel Grasp, Ground Stomp)
6. Mobility (Charge, Leap)
7. Main Damage Skills (HOTA, Earthquake, Upheaval, Whirlwind)
8. Fury Generators (Bash, Lunging Strike, Frenzy)

## Tips for Each Build

### HOTA Build
- Always wait for 2 Bash stacks before using HOTA
- Steel Grasp enemies together for maximum HOTA value
- Keep War Cry active at all times
- Save Wrath for elite packs

### Earthquake Build (uses Upheaval)
- Cast Upheaval for massive burst AoE damage
- Use Leap for positioning before Upheaval
- Bash between Upheavals for fury management
- Great for burst damage windows

### Lunging Strike Build
- Very mobile - constantly repositioning
- Lunging Strike provides both damage and mobility
- Use Upheaval when fury is 60+
- Steel Grasp before Upheaval for max damage

### Whirlwind Build
- Build Frenzy stacks before channeling
- Keep War Cry active for damage boost
- Fury management is critical
- Move while channeling for max coverage

### Bash Build
- Simplest build - just spam Bash
- War Cry essential for damage
- Double Swing when surrounded
- Pure single-target focus

## Troubleshooting

**How do I enable spells for my profile?**
- All spells appear in "Inactive Spells" menu by default
- Manually enable each spell you want to use by checking its box
- The plugin does NOT auto-detect skills from your skill bar (API limitation)
- You must manually enable/disable spells based on your build

**Which spells should I enable?**
- Refer to the "Quick Setup" section for your selected profile
- Enable the spells listed for your profile
- You can customize which spells to enable based on your playstyle

**Rotation not working as expected?**
- Verify you selected the correct profile
- Check that all required spells are enabled
- Review spell priorities in the profile
- Ensure you have proper gear/build for the profile

**Profile not applying?**
- Profile selection applies immediately
- Check "Equipped Spells" for enabled spells
- Make sure main plugin toggle is enabled
- Restart the plugin if needed

## Advanced: Custom Profiles

You can modify `profile_manager.lua` to create custom profiles:

1. Add new profile to `profiles` table
2. Define `core_skills` list
3. Set `spell_priority` numbers
4. Add `boss_rotation` and `aoe_rotation` strategies
5. Profile will appear in dropdown automatically

## Version History

- **v1.6** - Added Build Profile System
  - 5 build profiles (HOTA, Earthquake, Lunging Strike, Whirlwind, Bash)
  - Equipped Skills detection system
  - Dynamic spell priority rotation
  - Boss vs AoE optimized rotations
  - Comprehensive preset files

## Support

For questions, issues, or suggestions:
- Discord: https://discord.gg/VE2gztW23q
- GitHub: [Karnage8i2/Barbarian](https://github.com/Karnage8i2/Barbarian)

## Credits

- Profile System: Karnage8i2
- Original Plugin: Winterz
- Build Guides: Maxroll.gg
- QQT Lua System: qqtnn
