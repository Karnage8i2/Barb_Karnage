# HOTA Build - Rotation Flow & Priority Reference

## Quick Reference Card

### Core Rotation
```
┌─────────────────────────────────────────────┐
│         HOTA BASIC ROTATION LOOP            │
├─────────────────────────────────────────────┤
│  1. War Cry (Keep Active)                   │
│     ↓                                        │
│  2. Bash (First Hit)                        │
│     ↓                                        │
│  3. Bash (Second Hit) = 2 Stacks!           │
│     ↓                                        │
│  4. Hammer of the Ancients (BUFFED!)        │
│     ↓                                        │
│  5. Return to Step 2                        │
└─────────────────────────────────────────────┘
```

### AoE Pack Clearing
```
┌─────────────────────────────────────────────┐
│           AoE PACK ROTATION                 │
├─────────────────────────────────────────────┤
│  1. Rallying Cry (Speed Boost)              │
│  2. Challenging Shout (Defense)             │
│  3. Steel Grasp (Group Enemies)             │
│     ↓                                        │
│  4. Bash → Bash (2 Stacks)                  │
│  5. HOTA (Hits All Grouped!)                │
│  6. Repeat 4-5                              │
└─────────────────────────────────────────────┘
```

### Elite/Boss Rotation
```
┌─────────────────────────────────────────────┐
│        ELITE/BOSS ROTATION                  │
├─────────────────────────────────────────────┤
│  1. All Shouts (War/Rally/Challenge)        │
│  2. Wrath of the Berserk (ULTIMATE)         │
│  3. Call of the Ancients (ULTIMATE)         │
│  4. Steel Grasp (Group Adds)                │
│     ↓                                        │
│  5. SPAM: Bash x2 → HOTA                    │
│  6. Repeat Step 5 until dead                │
└─────────────────────────────────────────────┘
```

## Skill Priority Table

| Priority | Skill | When to Use | Cooldown |
|----------|-------|-------------|----------|
| 1 | Challenging Shout | 3+ enemies or danger | ~25s |
| 2 | War Cry | Always keep active | ~30s |
| 3 | Rallying Cry | 3+ enemies | ~25s |
| 4 | Iron Skin | Heavy damage incoming | ~20s |
| 5 | Wrath of Berserk | Elites or 5+ enemies | ~60s |
| 6 | Call of Ancients | Bosses/tough fights | ~50s |
| 7 | Steel Grasp | 3+ enemies nearby | ~8s |
| 8 | Ground Stomp | Emergency CC | ~12s |
| 9 | Charge | Repositioning | ~10s |
| 10 | **Hammer of Ancients** | **WITH 2 Bash Stacks** | **None** |
| 11 | **Bash** | **Fury Gen/Stacks** | **None** |

## Fury Management

```
FURY BAR: [||||||||||||||||||||||||||||] 100

Target Range: Keep between 35-100

Too Low (<35):  ⚠️  Can't cast HOTA - Bash more!
Sweet Spot:     ✓   Ready to cast HOTA
Too High (>95): ⚠️  Wasting fury gen - HOTA more!
```

### Fury Economy
- **Bash**: +20 Fury (generates)
- **HOTA**: -35 Fury (spends)
- **Optimal**: Bash x2 (+40) → HOTA (-35) = +5 net

## Bash Stacking System

```
NO STACKS     → BASH → 1 STACK     → BASH → 2 STACKS ★
[ ][ ]           ↓      [■][ ]         ↓      [■][■]
                                                 ↓
                                            USE HOTA!
                                                 ↓
                                            NO STACKS
                                            [ ][ ]
```

**Console Messages:**
- `"BASH PASSIVE NOT READY"` = Only 1 stack, need 1 more
- `"BASH PASSIVE READY ABOUT TO SLAMDUNK!!"` = 2 STACKS, HOTA TIME! 🔨

## Positioning & Movement

```
    [Enemy Pack]
         ↑
    🗲 Steel Grasp (Pull)
         ↓
    [Grouped Enemies]
         ↑
    ⚔️ CHARGE (Engage)
         ↓
    [YOU] → Bash x2 → HOTA → 💥
```

## Defensive Layer Priority

When taking damage, this happens automatically:
```
1. Challenging Shout → Reduces enemy damage
2. Iron Skin → Damage reduction barrier  
3. Rallying Cry → Movement to kite
4. Ground Stomp → CC to escape
5. Charge → Reposition away
```

## Buff/Debuff Tracking

### You Should Always Have:
- ✓ War Cry (damage buff)
- ✓ 0-2 Bash Stacks (visible on buff bar)

### On Large Packs:
- ✓ Rallying Cry (movement/resource)
- ✓ Challenging Shout (damage reduction)

### On Elites/Bosses:
- ✓ Wrath of the Berserk (major damage)
- ✓ Call of the Ancients (allies)

## Combo Strings

### Basic Combo (Single Target)
```
War Cry → Bash → Bash → HOTA → Bash → Bash → HOTA
```

### Pack Clear Combo
```
Rallying → Steel Grasp → Bash → Bash → HOTA → Bash → Bash → HOTA
```

### Elite Combo
```
War → Rally → Challenge → Wrath → Steel Grasp → 
Bash → Bash → HOTA → Bash → Bash → HOTA (repeat)
```

### Boss Combo
```
ALL SHOUTS → BOTH ULTIMATES → 
BASH-BASH-HOTA SPAM UNTIL DEAD
```

## Keybind Reference

Set your keybinds to match this priority for manual control:

```
[HOTBAR EXAMPLE]
1. Bash            (Spam when building stacks)
2. HOTA            (Use with 2 stacks)
3. Steel Grasp     (Group enemies)
4. War Cry         (Keep active)
5. Charge          (Mobility)
6. Wrath/Call      (Ultimate)
```

## Common Mistakes to Avoid

❌ **DON'T:**
- Cast HOTA without 2 Bash stacks (low damage!)
- Use HOTA on single target at low fury
- Forget to keep War Cry active
- Enable conflicting skills (Upheaval, Frenzy, etc.)
- Use mobility for damage (Charge is for positioning)

✅ **DO:**
- Always check for 2 Bash stacks before HOTA
- Steel Grasp before HOTA on packs
- Keep War Cry on cooldown
- Save big cooldowns for elites
- Charge to reposition, not to engage

## Damage Comparison

```
HOTA without Bash stacks:  [████░░░░░░] ~40% damage
HOTA with 2 Bash stacks:   [██████████] 100% damage ⚡

ALWAYS wait for 2 stacks!
```

## Troubleshooting Quick Fixes

| Problem | Solution |
|---------|----------|
| HOTA not casting | Check for 2 Bash stacks + 35 fury |
| No Bash stacks | Bash isn't enabled, enable it |
| Running out of fury | Bash more, HOTA less, check settings |
| Skills not casting | Enable orbwalker mode (hotkey) |
| Wrong skills casting | Disable conflicting skills |
| Low damage | Wait for 2 Bash stacks before HOTA |

## Tips for Maximum Efficiency

💡 **Pro Strategies:**
1. Steel Grasp pulls have a slight delay - account for it
2. Charge through enemy packs to get to backline
3. War Cry lasts ~20s, recast when it drops
4. Ground Stomp = panic button, use it!
5. Don't chase enemies, let them come to you
6. Bash generates fury even on kills
7. HOTA can hit multiple targets - aim center
8. Save Wrath for when you have 2+ elites
9. Call of Ancients stays active - they do damage
10. Console messages tell you everything!

---

**Remember**: Bash Bash HOTA is the mantra! 🔨

For detailed explanations, see: `HOTA_BUILD_GUIDE.md`
