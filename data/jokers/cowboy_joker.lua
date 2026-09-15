SMODS.Joker {
    key = 'cowboy_joker',

    loc_txt = {
        name = 'Cowboy',
        text = {
            'Gains {X:mult,C:white}X1.2{} Mult',
            'for every {C:money}$4{} you have',
            'when scoring',
            '{C:grey}(Currently:{} {X:mult,C:white}X#1#{} {C:grey}Mult){}'
        }
    },

    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    atlas = 'atlas_jokers',
    pos = { x = 2, y = 0 },

    loc_vars = function(self, info_queue, card)
        local money = G.GAME and G.GAME.dollars or 0
        local increments = math.floor(math.max(money, 0) / 4)
        local current_xmult = 1 + (increments * 0.2)

        return {
            vars = {
                current_xmult
            }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local money = G.GAME.dollars or 0
            local increments = math.floor(math.max(money, 0) / 4)
            local xmult = 1 + (increments * 0.2)

            return {
                Xmult = xmult
            }
        end
    end
}