# PIT-OPTIMIZED HOTA BARBARIAN BUILD - QUICK SETUP

## 🎯 Build Overview
**Optimized for:** Pit Pushing, Boss Fights, High-Tier Endgame  
**Based on:** https://d4builds.gg/builds/35e0478f-ff44-41be-935e-90f8cdc0a461/  
**Core Skill:** Hammer of the Ancients (HOTA)

---

## ⚡ 5-MINUTE SETUP

### Step 1: Enable Core Skills (Active Skills Menu)

**DAMAGE:**
- ✅ **Hammer of the Ancients** 
  - ✓ Check "Only Bash Buffed" 
  - Set "Min/Max Targets" to 1
- ✅ **Bash** (Fury generator + stack builder)

**SHOUTS (Keep all 3 active):**
- ✅ **War Cry** (Damage buff)
- ✅ **Rallying Cry** (Movement + Resource)
- ✅ **Challenging Shout** (Damage reduction)

**ULTIMATES:**
- ✅ **Wrath of the Berserk** (Major damage buff)
- ✅ **Call of the Ancients** (Summon allies)

**UTILITY:**
- ✅ **Steel Grasp** (Pull enemies)
- ✅ **Charge** (Gap closer)
- ✅ **Ground Stomp** (Crowd control)
- ✅ **Iron Skin** (Emergency defense)
- ✅ **Rupture** (Bleeding + Execute)
  - Set "Min Range" to 3m

### Step 2: Disable Conflicting Skills (Inactive Skills Menu)

❌ Mighty Throw, Kick, Leap, Upheaval, Double Swing, Rend, Death Blow, Frenzy, Whirlwind, Flay, Lunging Strike, Iron Maelstrom

---

## 🎮 ROTATION GUIDE

### Boss Fights

```
1. Pre-fight: War Cry → Rallying Cry → Challenging Shout
2. Engage: Wrath of the Berserk + Call of the Ancients (burst phase)
3. Apply Rupture for bleeding damage (ranged pressure if boss moves)
4. Core Loop:
   - Bash x2 (build stacks)
   - HOTA (massive damage)
   - Repeat
5. Positioning: Stay within 2-3 meters of boss
6. Defense: Iron Skin when HP < 50%
7. Gap Close: Use Charge when boss moves away
```

**Key Points:**
- ⚠️ **Always stay within 3m of the boss** - HOTA won't cast beyond this range
- 🔥 Maintain 2 Bash stacks before each HOTA for maximum damage
- 🛡️ Keep all 3 shouts active for defensive layers
- ⏰ Re-apply shouts and ultimates on cooldown

### Trash Mob Clearing (AOE)

```
1. Steel Grasp (pull mobs together)
2. Rupture (apply bleeding to entire pack)
3. Ground Stomp (if dangerous elites)
4. War Cry (damage buff)
5. Bash x2 (on grouped mobs)
6. HOTA (3m radius AOE damage)
7. Rallying Cry (move to next pack)
```

**Key Points:**
- 📍 Always use Steel Grasp first to group mobs
- 💥 HOTA has 3m AOE radius - maximize mob grouping
- 🏃 Use Rallying Cry for speed between packs
- ⏱️ Efficient clearing is key for Pit timer

---

## 🔧 PROXIMITY FIX (BOSS ISSUE RESOLVED)

### What Was Fixed:
- **Problem:** Character wasn't getting close enough to attack bosses
- **Root Cause:** Rotation accepted targets up to 8.5m, but HOTA only works within 3m
- **Solution:** Reduced max_range to 3.5m in main.lua

### Result:
✅ Character now stays within proper melee range  
✅ HOTA consistently connects with bosses  
✅ No more "out of range" issues during boss fights

---

## 💡 PRO TIPS

### Fury Management
- **Generate:** Bash (primary generator)
- **Spend:** HOTA (primary spender)
- **Balance:** Always have enough fury for HOTA after building Bash stacks
- **Optimal:** Bash x2 → HOTA gives best DPS and fury efficiency

### Defensive Layers
1. **Challenging Shout** - Damage reduction + Thorns
2. **Rallying Cry** - Unstoppable + Movement
3. **War Cry** - Damage buff (also provides mitigation via offense)
4. **Iron Skin** - Emergency barrier

**Rotation:** Keep all 3 shouts active, use Iron Skin as emergency button

### Pit-Specific Strategy

**Timer Management:**
- Clear trash quickly with Steel Grasp + AOE HOTA
- Don't waste time on stragglers
- Use Charge/Rallying Cry for movement speed
- Save burst cooldowns for elite packs and bosses

**Boss Phases:**
- Learn boss mechanics and safe DPS windows
- Pop all cooldowns during burst phases
- Maintain close proximity (2-3m) at all times
- Use defensive shouts proactively, not reactively

**Elite Packs:**
- Prioritize dangerous affixes first
- Group with Steel Grasp
- Stun with Ground Stomp if needed
- Burst with Wrath + HOTA spam

---

## 🎯 SKILL PRIORITY CHEAT SHEET

### Boss Fight Priority:
```
1. Maintain all 3 shouts (War/Rally/Challenge)
2. Use ultimates on cooldown (Wrath + Call of Ancients)
3. Apply bleeding: Rupture (ranged pressure)
4. Build stacks: Bash x2
5. Spend: HOTA (with buff)
6. Gap close: Charge (when boss moves)
7. Emergency: Iron Skin (low HP)
```

### Trash Pack Priority:
```
1. Group: Steel Grasp
2. Bleed: Rupture (spread DOT across pack)
3. Control: Ground Stomp (if dangerous)
4. Buff: War Cry
5. Build: Bash x2
6. Burst: HOTA (3m AOE)
7. Move: Rallying Cry (next pack)
```

---

## ⚠️ COMMON MISTAKES TO AVOID

❌ **Casting HOTA without Bash stacks** - Wasted damage  
✅ Always build 2 stacks first

❌ **Standing too far from targets** - HOTA won't cast  
✅ Stay within 2-3m at all times

❌ **Not maintaining shouts** - Missing defensive layers  
✅ Keep all 3 shouts active

❌ **Using HOTA without fury** - Rotation breaks down  
✅ Let Bash generate fury before HOTA

❌ **Ignoring Steel Grasp** - Missing AOE potential  
✅ Always group mobs first

---

## 📊 EXPECTED RESULTS

### What You Should See:
✅ Boss fights: Consistent close-range combat  
✅ Trash packs: Fast, efficient AOE clearing  
✅ Survivability: High uptime with 3-shout rotation  
✅ DPS: Massive burst from buffed HOTA  
✅ Pit progression: Smooth timer management

### If Something's Wrong:
- **HOTA not casting:** Check distance (must be < 3m)
- **Low damage:** Verify "Only Bash Buffed" is enabled
- **Dying too much:** Ensure all 3 shouts are active
- **Fury issues:** Use Bash more frequently
- **Slow clearing:** Always Steel Grasp before AOE HOTA

---

## 🔗 ADDITIONAL RESOURCES

- **Full Build Guide:** See `HOTA_BUILD_GUIDE.md`
- **Detailed Config:** See `pit_optimized_preset.lua`
- **Rotation Reference:** See `HOTA_ROTATION_REFERENCE.md`
- **Original Build:** https://d4builds.gg/builds/35e0478f-ff44-41be-935e-90f8cdc0a461/

---

## ✨ BUILD HIGHLIGHTS

**Strengths:**
- 🔥 Massive single-target burst damage
- 💥 Excellent AOE clearing with 3m radius
- 🛡️ High survivability with 3-shout rotation
- ⚡ Fast Pit clear times
- 🎯 Effective boss killer

**Best For:**
- Pit pushing (all tiers)
- Boss speedkills
- Elite pack farming
- Endgame content

**Playstyle:**
- Aggressive melee combat
- Close-range positioning required
- Cooldown management focused
- Burst damage windows

---

**Ready to dominate the Pit? Let's go! 🚀**
