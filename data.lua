-- Mod-dependent localisations
-- for name, _ in pairs(data.raw["autoplace-control"]) do
--     log(name)
-- end
-- Remove specific descriptions and names when certain mods are not active.
-- factorioplus
if mods["factorioplus"] == nil then
    data.raw.item["rocket-fuel"].localised_name = {"item-name.slondo-ptbr-rocket-fuel"}
    data.raw.item["rocket-fuel"].localised_description = {""}
    data.raw.recipe["rocket-fuel"].localised_name = {"recipe-name.slondo-ptbr-rocket-fuel"}

    data.raw.technology["rocket-fuel"].localised_name = {"technology-name.slondo-ptbr-rocket-fuel"}
    data.raw.technology["rocket-fuel"].localised_description = {"technology-description.slondo-ptbr-rocket-fuel"}
    data.raw["car"]["car"].localised_name = {"entity-name.slondo-ptbr-car"}
end

-- space-age
if mods["space-age"] ~= nil then
    data.raw.item["tungsten-ore"].localised_name = {"item-name.slondo-ptbr-tungsten-ore"}
    data.raw.item["tungsten-ore"].localised_description = {""}

    data.raw.item["tungsten-plate"].localised_name = {"item-name.slondo-ptbr-tungsten-plate"}
    data.raw["autoplace-control"]["tungsten_ore"].localised_name = {"autoplace-control-names.slondo-ptbr-tungsten-ore"}
end

-- bioindustries2
if mods["Bio_Industries_2"] == nil then
    local items = {"wood", "coal", "solid-fuel"}

    for _, name in ipairs(items) do
        local ac = data.raw.item[name]

        if ac then
            ac.localised_description = {""}
        end
    end
end

-- factorissimo 3
if mods["factorissimo-2-notnotmelon"] == nil then
    data.raw.item["agricultural-tower"].localised_description = {"entity-description.slondo-ptbr-agricultural-tower"}
end
