---@type InventoryConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.ammoItems = {
    ["p12guage"] = true,
    ["p5.56"] = true,
    ["p7.62"] = true,
    ["p9mm"] = true,
    ["p.308"] = true,
    ["7.62"] = true,
    ["5.56"] = true,
    ["12guage"] = true,
    ["9mm"] = true,
    [".357"] = true,
    [".45ACP"] = true,
    [".308"] = true,
    ["plastic"] = true,
    ["firework"] = true,
    ["flare"] = true,
    ["hominglauncher"] = true,
}

cfg.moneyItems = {
    ["dirtycash"] = true,
}

cfg.itemToModel = {
    ["weed"] = `h4_prop_h4_weed_bud_02b`,
    ["cocaine"] = `bkr_prop_coke_cut_02`,
    ["meth"] = `bkr_prop_meth_openbag_01a_frag_`,
    ["heroin"] = `h4_prop_h4_coke_spoon_01`,
    ["lsd"] = `ex_office_swag_pills1`,
    ["armour_plate"] = `prop_armour_pickup`,
}

return cfg