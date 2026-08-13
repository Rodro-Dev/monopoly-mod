if SMODS.Atlas then
    SMODS.Atlas({
        key = "monopoly_joker",
        path = "joker_image.png",
        px = 71,
        py = 95
    })
    SMODS.Atlas({
            key = "modicon",
            path = "modicon.png",
            px = 34,
            py = 34
    })
end
SMODS.load_file("data/jokers/monopoly.lua")()