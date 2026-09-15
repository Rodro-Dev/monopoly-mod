
SMODS.Joker{ --Pay Joker
    key = "pay_joker",
    config = {
        extra = {
            money = 1,
            Chips = 20,
            odds = 3
        }
    },
    loc_txt = {
        ['name'] = 'Pay Joker',
        ['text'] = {
            [1] = 'Each card played gives',
            [2] = '{C:chips}+#2#{} Chips',
            [3] = '{C:money}+$#1#{} {C:green}1 in 3{}',
            [4] = 'Increases by {C:chips}+10{} Chips for each Ante',
            [5] = 'And {C:money}+$1{} for each Ante'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'atlas_jokers',
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_modprefix_pay_joker') 
        return {vars = {card.ability.extra.money, card.ability.extra.Chips, new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if true then
                return {
                    chips = card.ability.extra.Chips
                    ,
                    func = function()
                        if SMODS.pseudorandom_probability(card, 'group_0_8a713637', 1, card.ability.extra.odds, 'j_modprefix_pay_joker', false) then
                            SMODS.calculate_effect({
                                func = function()
                                    
                                    local current_dollars = G.GAME.dollars
                                    local target_dollars = G.GAME.dollars + card.ability.extra.money
                                    local dollar_value = target_dollars - current_dollars
                                    ease_dollars(dollar_value)
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+$", colour = G.C.MONEY})
                                    return true
                                end}, card)
                            end
                            return true
                        end
                    }
                end
            end
            if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
                return {
                    func = function()
                        card.ability.extra.money = (card.ability.extra.money) + 1
                        return true
                    end,
                    extra = {
                        func = function()
                            card.ability.extra.Chips = (card.ability.extra.Chips) + 10
                            return true
                        end,
                        message = "UP",
                        colour = G.C.GREEN
                    }
                }
            end
        end
    }