SMODS.Joker {
    key = "pay_joker",
    loc_txt = {
        name = "Pay Joker",
        text = {
            "Each card played gives",
            "{C:chips}+#1#{} Chips".
            "And {C:money}+$#2#{} {C:green}{1 in 3}",
            "Increases by {C:chips}+10{} Chips for each Ante",
            "And {C:money}+$1{} for each Ante"
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

        local chips = 20 + (10 * (ante - 1))
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

            local chips = 20 + (10 * (ante - 1))
            local dollars = 1 + (ante - 1)

            return {
                chips = chips
            }
            if pseudorandom('pay_joker') < (1 / 3) then
                return {dollars = dollars}
            end
        end
    end
}