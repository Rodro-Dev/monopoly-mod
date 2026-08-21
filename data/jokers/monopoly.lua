SMODS.Joker {
    key = 'monopoly_joker',
    loc_txt = {
        name = 'Monopoly Guy',
        text = {
            'Earn {C:money}$#1#{} at the end of each round',
            'and reduce this amount by {C:money}$5{}',
            'Like {C:blue}Ice Cream{} but with money.'
        }
    },
    rarity = 3,
    cost = 12,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    atlas = 'monopoly_joker',
    pos = { x = 0, y = 0 },

    config = {
        extra = {
            dollars = 100,
            decrease = 5
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollars
            }
        }
    end,

    calculate = function(self, card, context)

        if context.end_of_round and context.main_eval then

            local payout = card.ability.extra.dollars

            -- Give money
            if payout > 0 then
                card.ability.extra.dollars =
                    card.ability.extra.dollars - card.ability.extra.decrease

                -- Destroy after the final payout
                if card.ability.extra.dollars <= 0 then
                    card:start_dissolve()
                end

                return {
                    dollars = payout,
                    message = '$' .. payout,
                    colour = G.C.MONEY
                }
            end
        end
    end
}