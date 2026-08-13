SMODS.Joker{
    key = "monopoly_joker",
    loc_txt = {
        name = "Monopoly Guy",
        text = {
            "Te da {C:money}dinero{}"
        }
    },
    rarity = 3,
    cost = 8,
    atlas = "monopoly_joker",
    pos = {x = 0, y = 0},

    calculate = function(self,card,context)
        if context.joker_main then
            return {}
        end
    end
}