# rotation_barbarian

## Overview
This is a QQT Lua plugin for automating Barbarian rotations in Diablo 4. It supports multiple builds and playstyles with extensive customization options.

## ⭐ NEW: Build Profile System ⭐

**🎯 [BUILD PROFILES GUIDE - START HERE!](BUILD_PROFILES_GUIDE.md)**

The plugin now includes 5 optimized build profiles with automatic rotation priorities:

1. **Hammer of the Ancients (HOTA)** - Bash stacking for massive burst damage
2. **Earthquake** (Profile name - uses Upheaval) - Burst AoE damage with Leap mobility
3. **Lunging Strike** - Mobile basic attack with Upheaval burst
4. **Whirlwind** - Channeled spin-to-win sustained AoE
5. **Bash** - Simple high attack speed basic attack spam

**Key Features:**
- Profile-based spell priority system
- Boss and AoE optimized rotations
- Equipped Skills detection (auto-detects skills on your bar)
- Preset configuration files for each build
- Detailed rotation strategies

**Quick Start:**
1. Select your build profile in the menu
2. Enable skills in "Equipped Skills"
3. Plugin automatically optimizes rotation

## Features
- **NEW: Build Profile System** with 5 optimized builds
- **NEW: Equipped Skills** detection - only shows skills on your skill bar
- Automatic spell rotation with profile-based priorities
- Boss vs AoE rotation optimization
- Multiple targeting modes (cursor/player)
- Customizable spell settings per ability
- Support for various Barbarian builds
- Auto-play integration
- Evade system integration

## Available Builds

### HOTA (Hammer of the Ancients) Build
A powerful leveling build focused on Hammer of the Ancients as the primary damage dealer. This build uses Bash to generate fury and build stacks that significantly buff HOTA damage.

**🚀 [GET STARTED NOW - Quick Start Guide](HOTA_QUICKSTART.md)** ⭐

**Documentation (Pick Your Path):**
- 🚀 **[HOTA_QUICKSTART.md](HOTA_QUICKSTART.md)** - ⭐ **START HERE!** 5-minute setup guide
- 📋 [HOTA_SETUP_CHECKLIST.md](HOTA_SETUP_CHECKLIST.md) - Step-by-step configuration checklist  
- 🎯 [HOTA_ROTATION_REFERENCE.md](HOTA_ROTATION_REFERENCE.md) - Visual rotation flows and quick reference
- 📖 [HOTA_BUILD_GUIDE.md](HOTA_BUILD_GUIDE.md) - Complete build guide with explanations
- ⚙️ [hota_build_config.lua](hota_build_config.lua) - Configuration reference file
- 🛠️ [hota_preset.lua](hota_preset.lua) - Preset helper (optional)

**Key Features:**
- Bash stacking system for buffed HOTA damage
- Fury management optimization
- Steel Grasp for enemy grouping
- Full shout support for buffs/debuffs
- Mobile gameplay with Charge
- Console feedback for Bash stacks and spell casts

**Based on:** [Mobalytics Sagittarian Barbarian Leveling Build](https://mobalytics.gg/diablo-4/builds/barbarian-sagittarian-barb-leveling)

**Core Rotation:** War Cry → Bash x2 (build stacks) → HOTA (massive damage!) → Repeat

## Installation
1. Place the `rotation_barbarian` folder in your QQT scripts directory
2. Launch Diablo 4 and QQT loader
3. The plugin will load automatically
4. **Select your build profile** in the "Build Profiles" menu
5. Configure skills in "Equipped Skills" section

## Configuration
Access the configuration menu in-game to:
- **Select your Build Profile** (HOTA, Earthquake, Lunging Strike, Whirlwind, or Bash)
- Enable/disable the plugin
- Choose targeting mode (cursor/player)
- Configure individual spells in **Equipped Skills**
- Adjust spell settings per ability
- View **Unequipped Skills** (skills not on your bar or disabled)

## Supported Abilities
### Basic Skills
- Bash - Fury generator
- Flay - Alternative basic attack
- Frenzy - Attack speed basic
- Lunging Strike - Mobility basic
- Mighty Throw - Ranged weapon throw

### Core Skills
- Hammer of the Ancients (HOTA) - High damage AOE
- Upheaval - Stun and damage
- Double Swing - Cleave attack
- Rend - Bleed damage
- Whirlwind - Channeled AOE

### Defensive Skills
- Iron Skin - Damage reduction
- Challenging Shout - Taunt and damage reduction
- Rallying Cry - Movement and resource
- Ground Stomp - AOE stun

### Brawling Skills
- Charge - Gap closer
- Leap - AOE damage and mobility
- Kick - Knockback
- War Cry - Damage buff
- Steel Grasp - Pull enemies

### Weapon Mastery
- Death Blow - Execute
- Rupture - Bleed explosion

### Ultimate Skills
- Wrath of the Berserk - Major damage buff
- Call of the Ancients - Summon allies
- Iron Maelstrom - High AOE damage (optional)

## File Structure
```
rotation_barbarian/
├── main.lua                        # Main rotation logic with profile system
├── menu.lua                        # Menu configuration
├── profile_manager.lua             # NEW: Build profile management
├── README.md                       # This file (overview)
│
├── ⭐ NEW: Build Profile System Files:
├── BUILD_PROFILES_GUIDE.md         # 🎯 Complete profile system guide - START HERE!
├── earthquake_preset.lua           # Earthquake build configuration
├── lunging_strike_preset.lua       # Lunging Strike build configuration
├── whirlwind_preset.lua            # Whirlwind build configuration
├── bash_preset.lua                 # Bash build configuration
│
├── ⭐ HOTA Build Files:
├── HOTA_QUICKSTART.md              # 🚀 5-minute HOTA setup
├── HOTA_SETUP_CHECKLIST.md         # 📋 Configuration checklist
├── HOTA_ROTATION_REFERENCE.md      # 🎯 Rotation guide with visuals
├── HOTA_BUILD_GUIDE.md             # 📖 Complete detailed guide
├── hota_build_config.lua           # ⚙️ Configuration reference
├── hota_preset.lua                 # 🛠️ Preset helper
├── pit_optimized_preset.lua        # 🏆 Endgame pit build
│
├── spells/                         # Spell implementations
│   ├── bash.lua
│   ├── hammer_of_ancients.lua
│   ├── war_cry.lua
│   ├── steel_grasp.lua
│   └── ... (all spell files)
│
└── my_utility/                     # Utility functions
    ├── my_utility.lua
    └── my_target_selector.lua
```

## Tips
- **NEW: Start with the [Build Profiles Guide](BUILD_PROFILES_GUIDE.md) to select your build**
- Use "Equipped Skills" menu to configure skills on your bar
- Profile system automatically optimizes spell priority
- Monitor console for spell cast feedback and rotation info
- Adjust individual spell settings as needed for your playstyle
- Experiment with different profiles to find your favorite

## Troubleshooting
- **Plugin not working:** Check if main toggle is enabled
- **Spells not casting:** Verify orbwalker mode is active
- **Skills not in Equipped Skills:** Make sure skill is on your skill bar in-game
- **Rotation feels wrong:** Verify correct profile is selected in Build Profiles menu
- **No damage:** Ensure primary damage spells for your profile are enabled
- **Wrong targeting:** Adjust targeting mode in menu (cursor/player)

## Version
- Version: 1.6
- Last Updated: 2026-01-11
- Compatible with: QQT Diablo Lua Plugin System

## What's New in v1.6
- ✨ **Build Profile System** with 5 optimized builds
- ✨ **Equipped Skills** detection - auto-detects skills on your bar
- ✨ Profile-based spell priority rotation
- ✨ Boss vs AoE rotation optimization
- ✨ Comprehensive preset files for each build
- ✨ Detailed BUILD_PROFILES_GUIDE.md documentation

## Support
Join the Discord for support and updates: https://discord.gg/VE2gztW23q

## Credits
- Created by Winterz
- HOTA Build configuration based on Mobalytics guides
- QQT Lua system by qqtnn