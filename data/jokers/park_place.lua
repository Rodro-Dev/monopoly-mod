
SMODS.Joker{ --Park Place
    key = "park_place",
    config = {
        extra = {
            jokers = 0,
            jokercount = 0
        }
    },
    loc_txt = {
        ['name'] = 'Park Place',
        ['text'] = {
            [1] = '{C:money}+3{} Chips for each {C:attention}Joker{}',
            [2] = 'at the end of the {C:purple}round{}.'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'atlas_jokers',
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.jokers, #(G.jokers and (G.jokers and G.jokers.cards or {}) or {})}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            local jokers_value = card.ability.extra.jokers
            return {
                func = function()
                    card.ability.extra.jokers = #(G.jokers and G.jokers.cards or {})
                    return true
                end,
                extra = {
                    func = function()
                        card.ability.extra.jokers = (card.ability.extra.jokers) * 3
                        return true
                    end,
                    colour = G.C.MULT,
                    extra = {
                        
                        func = function()
                            
                            local current_dollars = G.GAME.dollars
                            local target_dollars = G.GAME.dollars + jokers_value
                            local dollar_value = target_dollars - current_dollars
                            ease_dollars(dollar_value)
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+$", colour = G.C.MONEY})
                            return true
                        end,
                        colour = G.C.MONEY
                    }
                }
            }
        end
    end
}