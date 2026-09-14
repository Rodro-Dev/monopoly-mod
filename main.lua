if SMODS.Atlas then
    SMODS.Atlas({
        key = "monopoly_jokers",
        path = "joker_atlas.png",
        px = 71,
        py = 95
    })
    SMODS.Atlas({
        key = "pay_Joker",
        path = "pay_joker_atlas.png",
        px = 71,
        py = 95
    })
    SMODS.Atlas({
        key = "atlas_deck",
        path = "deck_image.png",
        px = 71,
        py = 95
    })
    SMODS.Atlas({
        key = "atlas_blind",
        path = "greed_icon.png",
        px = 34,
        py = 34,

        atlas_table = "ANIMATION_ATLAS",
        frames = 21,
        fps = 10
    })
    SMODS.Atlas({
        key = "modicon",
        path = "modicon.png",
        px = 34,
        py = 34
    })
end
SMODS.load_file("data/jokers/cowboy_joker.lua")()
SMODS.load_file("data/jokers/monopoly_guy.lua")()
SMODS.load_file("data/jokers/pay_joker.lua")()


SMODS.load_file("data/blinds/the_greed.lua")()
SMODS.load_file("data/decks/stonks_deck.lua")()

SMODS.load_file("ui/config.lua")()