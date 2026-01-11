local my_utility = require("my_utility/my_utility")

local menu_elements_mighty_throw =
{
    tree_tab            = tree_node:new(1),
    main_boolean        = checkbox:new(true, get_hash(my_utility.plugin_label .. "mighty_throw_base_main_bool")),
}

local function menu()
    
    if menu_elements_mighty_throw.tree_tab:push("Mighty Throw")then
        menu_elements_mighty_throw.main_boolean:render("Enable Spell", "")
 
        menu_elements_mighty_throw.tree_tab:pop()
    end
end

local spell_id_mighty_throw = 1611316;

local mighty_throw_spell_data = spell_data:new(
    2.0,                        -- radius
    15.0,                       -- range
    0.5,                        -- cast_delay
    2.0,                        -- projectile_speed
    true,                       -- has_collision
    spell_id_mighty_throw,      -- spell_id
    spell_geometry.rectangular, -- geometry_type
    targeting_type.skillshot    --targeting_type
)
local next_time_allowed_cast = 0.0;
local function logics(target)
    
    local menu_boolean = menu_elements_mighty_throw.main_boolean:get();
    local is_logic_allowed = my_utility.is_spell_allowed(
                menu_boolean, 
                next_time_allowed_cast, 
                spell_id_mighty_throw);

    if not is_logic_allowed then
        return false;
    end;

    if cast_spell.target(target, mighty_throw_spell_data, false) then

        local current_time = get_time_since_inject();
        next_time_allowed_cast = current_time + 0.5;

        console.print("Casted Mighty Throw");
        return true;
    end;
            
    return false;
end



local function get_enabled()
    return menu_elements_mighty_throw.main_boolean:get()
end

return 
{
    menu = menu,
    logics = logics,
    get_enabled = get_enabled,   
}
