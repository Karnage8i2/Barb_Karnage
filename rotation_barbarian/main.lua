local local_player = get_local_player()
if local_player == nil then
    return
end

local character_id = local_player:get_character_class_id();
local is_barbarian = character_id == 1;
if not is_barbarian then
 return
end;

local my_target_selector = require("my_utility/my_target_selector")
local spell_data = require("my_utility/spell_data")

-- Assuming vec2 and vec2:new are already defined

-- Create the max and min size vectors
local max_size = vec2:new(500, 800)
local min_size = vec2:new(400, 100)

-- Call the function to set the menu size constraints
graphics.set_menu_constraints_special_fnc(max_size, min_size)


local menu = require("menu");
local profile_manager = require("profile_manager");

local spells =
{
    lunging_strike          = require("spells/lunging_strike"),
    whirl_wind              = require("spells/whirl_wind"),
    bash                    = require("spells/bash"),
    frenzy                  = require("spells/frenzy"),
    flay                    = require("spells/flay"),
    hammer_of_ancients      = require("spells/hammer_of_ancients"),
    upheaval                = require("spells/upheaval"),
    double_swing            = require("spells/double_swing"),
    rend                    = require("spells/rend"),
    rallying_cry            = require("spells/rallying_cry"),
    challenging_shout       = require("spells/challenging_shout"),
    war_cry                 = require("spells/war_cry"),
    iron_skin               = require("spells/iron_skin"),
    ground_stomp            = require("spells/ground_stomp"),
    kick                    = require("spells/kick"),
    charge                  = require("spells/charge"),
    leap                    = require("spells/leap"),
    rupture                 = require("spells/rupture"),
    death_blow              = require("spells/death_blow"),
    wrath_of_the_berserk    = require("spells/wrath_of_the_berserk"),
    call_of_the_ancients    = require("spells/call_of_the_ancients"),
    iron_maelstorm          = require("spells/iron_maelstorm"),
    steel_grasp             = require("spells/steel_grasp"),
    mighty_throw            = require("spells/mighty_throw"),
}

local spell_options = {
    "None",
    "lunging_strike",
    "whirl_wind",
    "bash",
    "frenzy",
    "flay",
    "hammer_of_ancients",
    "upheaval",
    "double_swing",
    "rend",
    "rallying_cry",
    "challenging_shout",
    "war_cry",
    "iron_skin",
    "ground_stomp",
    "kick",
    "charge",
    "leap",
    "rupture",
    "death_blow",
    "wrath_of_the_berserk",
    "call_of_the_ancients",
    "iron_maelstorm",
    "steel_grasp",
    "mighty_throw"
}

local active_skills_tree = tree_node:new(0)
local inactive_skills_tree = tree_node:new(0)
local equipped_skills_tree = tree_node:new(0)
local unequipped_skills_tree = tree_node:new(0)

-- Core spells for HOTA build - these are recommended to be enabled
local hota_build_spells = {
    "hammer_of_ancients",
    "bash",
    "war_cry",
    "rallying_cry",
    "challenging_shout",
    "steel_grasp",
    "charge",
    "ground_stomp",
    "iron_skin",
    "wrath_of_the_berserk",
    "call_of_the_ancients",
}

local function is_hota_build_spell(spell_name)
    for _, spell in ipairs(hota_build_spells) do
        if spell == spell_name then
            return true
        end
    end
    return false
end

-- Add fallback for get_equipped_spell_ids
local function safe_get_equipped_spell_ids()
    if get_equipped_spell_ids then
        return get_equipped_spell_ids()
    end
    return {}
end

local function render_equipped_skills_menu()
    if equipped_skills_tree:push("Equipped Skills") then
        -- Get equipped spell IDs from the API
        local equipped_spells = safe_get_equipped_spell_ids()
        
        -- Create a lookup table for equipped spells
        local equipped_lookup = {}
        for _, spell_id in ipairs(equipped_spells) do
            -- Skip invalid spell IDs (-1)
            if spell_id <= 0 then
                goto continue
            end
            
            -- Check each spell in spell_data to find matching spell_id
            for spell_name, data in pairs(spell_data) do
                if data.spell_id == spell_id then
                    equipped_lookup[spell_name] = true
                    break
                end
            end
            
            ::continue::
        end
        
        -- Display ALL equipped spells, regardless of profile
        -- Go through all spells in the spells table and show if equipped
        for spell_name, spell_module in pairs(spells) do
            if equipped_lookup[spell_name] and spell_module.menu then
                spell_module.menu()
            end
        end
        
        equipped_skills_tree:pop()
    end
end

local function render_unequipped_skills_menu()
    if unequipped_skills_tree:push("Inactive Skills") then
        -- Get equipped spell IDs from the API
        local equipped_spells = safe_get_equipped_spell_ids()
        
        -- Create a lookup table for equipped spells
        local equipped_lookup = {}
        for _, spell_id in ipairs(equipped_spells) do
            -- Skip invalid spell IDs (-1)
            if spell_id <= 0 then
                goto continue
            end
            
            -- Check each spell in spell_data to find matching spell_id
            for spell_name, data in pairs(spell_data) do
                if data.spell_id == spell_id then
                    equipped_lookup[spell_name] = true
                    break
                end
            end
            
            ::continue::
        end
        
        -- Display ALL spells that are NOT equipped, regardless of profile
        -- Go through all spells in the spells table and show if NOT equipped
        for spell_name, spell_module in pairs(spells) do
            if not equipped_lookup[spell_name] and spell_module.menu then
                spell_module.menu()
            end
        end
        
        unequipped_skills_tree:pop()
    end
end

-- Keep old functions for backward compatibility
local function render_active_skills_menu()
    if active_skills_tree:push("Active Skills") then
        for i = 2, #spell_options do  -- Start at 2 to skip "None"
            local spell_name = spell_options[i]
            if spells[spell_name] and spells[spell_name].menu then
                -- Check if spell has get_enabled function and if it's enabled
                local is_enabled = spells[spell_name].get_enabled and spells[spell_name].get_enabled()
                
                -- Show in Active Skills ONLY if spell is actually enabled
                if is_enabled then
                    spells[spell_name].menu()
                end
            end
        end
        
        active_skills_tree:pop()
    end
end

local function render_inactive_skills_menu()
    if inactive_skills_tree:push("Inactive Skills") then
        for i = 2, #spell_options do  -- Start at 2 to skip "None"
            local spell_name = spell_options[i]
            if spells[spell_name] and spells[spell_name].menu then
                -- Check if spell has get_enabled function and if it's disabled
                local is_enabled = spells[spell_name].get_enabled and spells[spell_name].get_enabled()
                
                -- Show in Inactive Skills if spell is disabled
                -- Note: Spells not part of HOTA build will automatically appear here when disabled
                if not is_enabled then
                    spells[spell_name].menu()
                end
            end
        end
        
        inactive_skills_tree:pop()
    end
end

local targeting_mode_options = {"cursor", "player"}
local targeting_mode_dropdown = combo_box:new(0, get_hash("targeting_mode_dropdown"))

on_render_menu(function ()
    if not menu.main_tree:push("Barbarian: Winterz|Karnage V1") then
        return
    end

    menu.main_boolean:render("Enable Plugin", "")

    if menu.main_boolean:get() == false then
        menu.main_tree:pop()
        return
    end

    targeting_mode_dropdown:render("Targeting Mode", targeting_mode_options, "Target closest to PLAYER or closest to CURSOR")

    -- Render Profile Manager
    profile_manager.render_menu()

    -- Render spell menus with auto-detection
    -- Equipped Skills: Shows ALL skills detected on skill bar (profile-independent)
    -- Inactive Skills: Shows ALL skills NOT detected on skill bar (profile-independent)
    -- Skills auto-appear when added to bar, auto-disappear when removed
    render_equipped_skills_menu()
    render_unequipped_skills_menu()

    menu.main_tree:pop()
end)

local can_move = 0.0;
local cast_end_time = 0.0;

local mount_buff_name = "Generic_SetCannotBeAddedToAITargetList";
local mount_buff_name_hash = mount_buff_name;
local mount_buff_name_hash_c = 1923;

local my_utility = require("my_utility/my_utility");
local my_target_selector = require("my_utility/my_target_selector");

on_update(function ()

    local local_player = get_local_player();
    if not local_player then
        return;
    end

    local current_orb_mode = orbwalker.get_orb_mode()
    if current_orb_mode == orb_mode.none and not my_utility.is_auto_play_enabled() then
        cast_spell.pause_all_channel_spells(0.25)
    end

    if menu.main_boolean:get() == false then
        -- if plugin is disabled dont do any logic
        return;
    end;

    local spell_id_whirl_wind = 206435;
    if cast_spell.is_channel_spell_active(spell_id_whirl_wind) then
        cast_spell.update_channel_spell_position(spell_id_whirl_wind, get_cursor_position())
    end

    local current_time = get_time_since_inject()
    if current_time < cast_end_time then
        return;
    end;

    local selected_position = my_target_selector.get_current_selected_position()

    if not my_utility.is_action_allowed() then
        return;
    end  

    local is_auto_play_active = auto_play.is_active()
    local max_range = is_auto_play_active and 12.0 or 8.5
    local screen_range = is_auto_play_active and 20.0 or 16.0

    local collision_table = { false, 2.0 };
    local floor_table = { true, 5.0 };
    local angle_table = { false, 90.0 };

    local entity_list = my_target_selector.get_target_list(
        selected_position,
        screen_range,
        collision_table,
        floor_table,
        angle_table);

    local target_selector_data = my_target_selector.get_target_selector_data(
        selected_position,
        entity_list);

    if not target_selector_data.is_valid then
        return;
    end
 
    local best_target = target_selector_data.closest_unit;
    local best_target_bash = target_selector_data.closest_unit;

    if target_selector_data.has_elite then
        local unit = target_selector_data.closest_elite;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(selected_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end

    if target_selector_data.has_boss then
        local unit = target_selector_data.closest_boss;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(selected_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end

    if target_selector_data.has_champion then
        local unit = target_selector_data.closest_champion;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(selected_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end   

    if not best_target then
        return;
    end


    local best_target_position = best_target:get_position();
    local distance_sqr = best_target_position:squared_dist_to_ignore_z(selected_position);

    if distance_sqr > (max_range * max_range) then
        best_target = target_selector_data.closest_unit;
        local closer_pos = best_target:get_position();
        local distance_sqr_2 = closer_pos:squared_dist_to_ignore_z(selected_position);
        if distance_sqr_2 > (max_range * max_range) then
            return;
        end
    end
-- ========================================================================
-- Dynamic Profile-based Rotation
-- ========================================================================
    
    -- Create a spell execution table with priorities from the current profile
    local spell_execution_list = {}
    
    for spell_name, spell_module in pairs(spells) do
        if spell_module.logics and spell_module.get_enabled and spell_module.get_enabled() then
            local priority = profile_manager.get_spell_priority(spell_name)
            local is_in_profile = profile_manager.is_skill_in_current_profile(spell_name)
            
            -- Only include spells that are in the current profile
            if is_in_profile then
                table.insert(spell_execution_list, {
                    name = spell_name,
                    module = spell_module,
                    priority = priority
                })
            end
        end
    end
    
    -- Sort by priority (lower number = higher priority)
    table.sort(spell_execution_list, function(a, b)
        return a.priority < b.priority
    end)
    
    -- Execute spells in priority order
    for _, spell_entry in ipairs(spell_execution_list) do
        local spell_name = spell_entry.name
        local spell_module = spell_entry.module
        
        -- Different spells take different parameters
        local success = false
        
        if spell_name == "bash" or spell_name == "lunging_strike" or spell_name == "frenzy" or spell_name == "flay" then
            success = spell_module.logics(entity_list)
        elseif spell_name == "steel_grasp" then
            success = spell_module.logics(entity_list, target_selector_data, best_target)
        elseif spell_name == "challenging_shout" or 
               spell_name == "war_cry" or 
               spell_name == "rallying_cry" or 
               spell_name == "iron_skin" or spell_name == "wrath_of_the_berserk" or spell_name == "call_of_the_ancients" then
            success = spell_module.logics()
        else
            -- Most spells take best_target
            success = spell_module.logics(best_target)
        end
        
        if success then
            -- Set appropriate cast delay based on spell
            if spell_name == "hammer_of_ancients" or spell_name == "charge" or spell_name == "steel_grasp" then
                cast_end_time = current_time + 0.2
            elseif spell_name == "ground_stomp" or spell_name == "leap" or spell_name == "kick" or 
                   spell_name == "mighty_throw" or spell_name == "iron_maelstorm" then
                cast_end_time = current_time + 0.3
            elseif spell_name == "upheaval" or spell_name == "double_swing" or spell_name == "rend" or 
                   spell_name == "death_blow" or spell_name == "frenzy" or spell_name == "whirl_wind" or 
                   spell_name == "flay" then
                cast_end_time = current_time + 0.3
            elseif spell_name == "rupture" then
                cast_end_time = current_time + 1.0
            else
                cast_end_time = current_time + 0.2
            end
            return
        end
    end

-- ========================================================================
-- End Dynamic Profile-based Rotation
-- ========================================================================

-- ========================================================================
-- Legacy Hardcoded Rotation (Fallback)
-- Used when profile system doesn't handle a spell or for backward compatibility
-- ========================================================================
    if spells.iron_maelstorm.logics(best_target)then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.challenging_shout.logics() then
        --cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.war_cry.logics() then
        --cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.rallying_cry.logics() then
        --cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.wrath_of_the_berserk.logics() then
        --cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.iron_skin.logics() then
        --cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.call_of_the_ancients.logics() then
        --cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.ground_stomp.logics(best_target) then
        cast_end_time = current_time + 0.5;
        return;
    end;

    if spells.charge.logics(best_target) then
        cast_end_time = current_time + 0.2;
        return;
    end;

    if spells.steel_grasp.logics(entity_list, target_selector_data, best_target) then
        cast_end_time = current_time + 0.2;
        return;
    end;

    if spells.mighty_throw.logics(best_target) then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.hammer_of_ancients.logics(best_target) then
        cast_end_time = current_time + 0.2;
        return;
    end;

    if spells.kick.logics(best_target) then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.leap.logics(best_target) then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.upheaval.logics(best_target) then
        cast_end_time = current_time + 0.4;
        return;
    end;

    if spells.double_swing.logics(best_target) then
        cast_end_time = current_time + 0.4;
        return;
    end;

    if spells.rend.logics(best_target) then
        cast_end_time = current_time + 0.4;
        return;
    end;

    if spells.death_blow.logics(best_target) then
        cast_end_time = current_time + 0.4;
        return;
    end;

    if spells.rupture.logics(best_target) then
        cast_end_time = current_time + 1.0;
        return;
    end;

    if spells.frenzy.logics(best_target) then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.whirl_wind.logics(best_target) then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.flay.logics(best_target) then
        cast_end_time = current_time + 0.3;
        return;
    end;

    if spells.lunging_strike.logics(entity_list) then
        cast_end_time = current_time + 0.2;
        return;
    end;

    if spells.bash.logics(entity_list) then
         cast_end_time = current_time
        return;
   end;

-- ========================================================================
-- End Legacy Hardcoded Rotation
-- ========================================================================

    local move_timer = get_time_since_inject()
    if move_timer < can_move then
        return;
    end;

    local is_auto_play = my_utility.is_auto_play_enabled();
    if is_auto_play then
        local move_timer = get_time_since_inject()
        if move_timer >= can_move then
            local player_position = get_player_position()
            local closest_unit = target_selector_data.closest_unit
            if closest_unit then
                local closest_unit_position = closest_unit:get_position()
                local move_pos = closest_unit_position:get_extended(player_position, -2.0)
                if pathfinder.request_move(move_pos) then
                    can_move = move_timer + 1.20
                    console.print("auto play move towards closest unit")
                end
            end
        end
    end

    local selected_targeting_mode = targeting_mode_options[targeting_mode_dropdown:get() + 1]
    my_target_selector.set_targeting_mode(selected_targeting_mode)

end)

local draw_player_circle = false;
local draw_enemy_circles = false;

on_render(function ()

    if menu.main_boolean:get() == false then
        return;
    end;

    local local_player = get_local_player();
    if not local_player then
        return;
    end
    local selected_position = my_target_selector.get_current_selected_position()
    local max_range = 8.0
    local player_position = local_player:get_position();
    local player_screen_position = graphics.w2s(player_position);
    if player_screen_position:is_zero() then
        return;
    end

    if draw_player_circle then
        graphics.circle_3d(player_position, 8, color_white(85), 3.5, 144)
        graphics.circle_3d(player_position, 6, color_white(85), 2.5, 144)
    end    

    if draw_enemy_circles then
        local enemies = actors_manager.get_enemy_npcs()

        for i,obj in ipairs(enemies) do
        local position = obj:get_position();
        local distance_sqr = position:squared_dist_to_ignore_z(player_position);
        local is_close = distance_sqr < (8.0 * 8.0);
            -- if is_close then
                graphics.circle_3d(position, 1, color_white(100));

                local future_position = prediction.get_future_unit_position(obj, 0.4);
                graphics.circle_3d(future_position, 0.5, color_yellow(100));
            -- end;
        end;
    end


    -- glow target -- quick pasted code cba about this game

    local screen_range = 16.0;
    local player_position = get_player_position();
    local cursor_position = get_cursor_position();

    local collision_table = { false, 2.0 };
    local floor_table = { true, 5.0 };
    local angle_table = { false, 90.0 };

    local entity_list = my_target_selector.get_target_list(
        selected_position,
        screen_range, 
        collision_table, 
        floor_table, 
        angle_table);

    local target_selector_data = my_target_selector.get_target_selector_data(
        selected_position, 
        entity_list);

    if not target_selector_data.is_valid then
        return;
    end
 -- console.print(max_range)
    local best_target = target_selector_data.closest_unit;

    if target_selector_data.has_elite then
        local unit = target_selector_data.closest_elite;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(selected_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end        
    end

    if target_selector_data.has_boss then
        local unit = target_selector_data.closest_boss;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(selected_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end

    if target_selector_data.has_champion then
        local unit = target_selector_data.closest_champion;
        local unit_position = unit:get_position();
        local distance_sqr = unit_position:squared_dist_to_ignore_z(selected_position);
        if distance_sqr < (max_range * max_range) then
            best_target = unit;
        end
    end   

    if not best_target then
        return;
    end

    if best_target and best_target:is_enemy()  then
        local glow_target_position = best_target:get_position();
        local glow_target_position_2d = graphics.w2s(glow_target_position);
        graphics.line(glow_target_position_2d, player_screen_position, color_red(180), 2.5)
        graphics.circle_3d(glow_target_position, 0.80, color_red(200), 2.0);
    end

end);

console.print("Lua Plugin - Barbarian Base - Version 1.5");