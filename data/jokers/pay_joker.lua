SMODS.Joker {
    key = "pay_joker",
    loc_txt = {
        name = "Pay Joker",
        text = {
            "Each card played gives",
            "{C:chips}+#1#{} Chips and {C:money}+$#2#{}",
            "Increases by {C:chips}+50{} Chips and {C:money}+$1{}",
            "for each Ante"
        }
    },
    rarity = 2,
    cost = 8,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = false,
    atlas = 'monopoly_jokers',
    pos = {x = 1, y = 0},

    loc_vars = function(self, info_queue, card)
        local ante = G.GAME and G.GAME.round_resets and G.GAME.round_resets.ante or 1

        local chips = 100 + (50 * (ante - 1))
        local dollars = 1 + (ante - 1)

        return {
            vars = {
                chips,
                dollars
            }
        }
    end,

    calculate = function(self, card, context)
        if context.individual
        and context.cardarea == G.play then
            local ante = G.GAME and G.GAME.round_resets and G.GAME.round_resets.ante or 1

            local chips = 100 + (50 * (ante - 1))
            local dollars = 1 + (ante - 1)

            return {
                chips = chips,
                dollars = dollars
            }
        end
    end
}