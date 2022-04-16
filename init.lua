minetest.register_on_mods_loaded(function()
  for item, def in pairs(minetest.registered_items) do
    local crafts = minetest.get_all_craft_recipes(item)
    if crafts then
      for _, craft in pairs(crafts) do
        if craft.type ~= "cooking" then
          minetest.clear_craft(craft)
        end
      end
    end
  end
end)
