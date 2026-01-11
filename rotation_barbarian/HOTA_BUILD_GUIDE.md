# HOTA (Hammer of the Ancients) Build Guide for Barbarian

## Overview
This is a Hammer of the Ancients (HOTA) focused build optimized for leveling, based on the Mobalytics Sagittarian Barbarian leveling guide.

## Build Philosophy
The HOTA build revolves around:
1. **Bash** - Generate fury and build stacks that buff your next Hammer of the Ancients
2. **Hammer of the Ancients** - Your main damage dealer, significantly buffed after 2 Bash stacks
3. **Shouts** - Maintain buffs and debuffs for survivability and damage
4. **Mobility** - Use Charge to reposition and gap close
5. **Control** - Steel Grasp to group enemies for maximum HOTA damage

## Quick Setup Guide

### Step 1: Configure the Build
1. Load the barbarian rotation plugin
2. Enable the main plugin toggle
3. Configure each spell according to the recommended settings below

### Step 2: Core Skills Setup

#### Primary Skills (Must Enable)
- **Hammer of the Ancients**: Enable | Only Bash Buffed: ON | Min Enemies: 1
- **Bash**: Enable | Use as Filler: OFF | Range: 1.60 | Max Angle: 180

#### Shouts (Keep Active)
- **War Cry**: Enable | Filter: No Filter | Min Enemies: 1
- **Rallying Cry**: Enable | Filter: No Filter | Min Enemies: 3  
- **Challenging Shout**: Enable | Filter: No Filter | Min Enemies: 3

#### Utility/Mobility
- **Steel Grasp**: Enable | Mode: Auto | Min Hits: 3
- **Charge**: Enable
- **Ground Stomp**: Enable
- **Iron Skin**: Enable

#### Ultimates
- **Wrath of the Berserk**: Enable | Filter: Elite & Boss Only | Min Enemies: 5
- **Call of the Ancients**: Enable

### Step 3: Disable Conflicting Skills
To optimize the HOTA rotation, disable these alternative skills:
- Upheaval
- Double Swing
- Rend
- Death Blow
- Rupture
- Frenzy
- Whirlwind
- Flay
- Lunging Strike
- Kick
- Leap (if using Charge)

## Rotation Priority

### Basic Rotation
1. **War Cry** - Keep buff active
2. **Steel Grasp** - Pull enemies together (when 3+ enemies available)
3. **Bash** x2 - Build 2 stacks
4. **Hammer of the Ancients** - Unleash buffed damage
5. Repeat steps 3-4

### Pack Clearing
1. **Rallying Cry** - Movement speed and resource
2. **Challenging Shout** - Defense
3. **Steel Grasp** - Group enemies
4. **Ground Stomp** - Stun if needed
5. **Bash** x2 → **HOTA** cycle

### Elite/Boss Fights
1. All Shouts active
2. **Wrath of the Berserk** - Major damage buff
3. **Call of the Ancients** - Additional damage
4. **Steel Grasp** - Group adds
5. **Bash** x2 → **HOTA** spam cycle

## Key Mechanics

### Bash Stacking System
- Each Bash hit builds 1 stack (max 2 stacks)
- When you have 2 Bash stacks, your next Hammer of the Ancients deals significantly more damage
- The plugin tracks these stacks automatically
- After using HOTA, stacks are consumed and you need to build them again with Bash

### Fury Management
- **Bash** generates fury (your resource)
- **Hammer of the Ancients** spends fury (costs ~35 fury)
- Keep fury between 35-100 for optimal HOTA usage
- The plugin will automatically use Bash as a filler when fury is low

### Targeting
- Set targeting mode to your preference: **Cursor** or **Player**
- **Cursor**: Skills target enemies near your cursor
- **Player**: Skills target enemies near your character

## Tips for Success

1. **Always maintain 2 Bash stacks** - The damage difference is massive
2. **Position with Charge** - Get in range quickly and reposition as needed
3. **Group with Steel Grasp** - HOTA has AOE, maximize value by grouping enemies
4. **Keep War Cry active** - It's a constant damage buff
5. **Save cooldowns for elites** - Wrath of the Berserk for tough packs
6. **Use Challenging Shout defensively** - Reduce incoming damage in dangerous situations
7. **Ground Stomp for emergencies** - When surrounded or need breathing room

## Spell Priority (Execution Order)
The plugin will attempt to cast spells in this order:
1. Challenging Shout
2. War Cry  
3. Rallying Cry
4. Iron Skin
5. Wrath of the Berserk
6. Call of the Ancients
7. Steel Grasp
8. Ground Stomp
9. Charge
10. **Hammer of the Ancients** (when 2 Bash stacks)
11. **Bash** (to build stacks and generate fury)

## Configuration File
The `hota_build_config.lua` file contains all recommended settings and can be used as a reference for optimal configuration.

## Troubleshooting

### HOTA not casting
- Check if "Enable Spell" is toggled ON for Hammer of the Ancients
- Verify "Only Bash Buffed" is enabled
- Ensure you have at least 2 Bash stacks (check console messages)
- Verify you have enough fury (35+)

### Running out of Fury
- Make sure Bash is enabled
- Lower the "Min Enemies Hit" for Hammer of the Ancients if set too high
- Disable competing fury spenders (Upheaval, Double Swing, etc.)

### Skills not casting
- Check if orbwalker mode is active (press your orb mode keybind)
- Verify "Enable Plugin" main toggle is ON
- Ensure spells are not on cooldown
- Check targeting mode matches your playstyle

## Build Variations

### More Mobility
- Enable Leap instead of Charge for better repositioning
- Adjust Leap settings in the spell menu

### More Defensive
- Lower the "Min Enemies" threshold for Challenging Shout (use it more often)
- Enable Iron Skin for additional damage reduction
- Set Wrath of the Berserk to "No Filter" to use it more frequently

### Single Target Focus
- Lower "Min Hits" for Steel Grasp
- Set "Min Enemies" to 1 for all shouts
- Keep HOTA "Min Enemies Hit" at 0

## References
- Based on: [Mobalytics Sagittarian Barbarian Leveling Build](https://mobalytics.gg/diablo-4/builds/barbarian-sagittarian-barb-leveling)
- Main rotation file: `main.lua`
- Configuration reference: `hota_build_config.lua`

## Version
- Build Version: 1.0
- Compatible with: QQT Diablo Lua Plugin System
- Last Updated: 2025-12-28
