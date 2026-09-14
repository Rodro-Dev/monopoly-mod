SMODS.Blind {
    key = 'the_greed',

    loc_txt = {
        name = 'The Greed',
        text = {
            'Divide Mult by',
            'your money'
        }
    },

    atlas = 'atlas_blind',
    pos = {
        x = 0,
        y = 0
    },
    boss = {
        min = 4
    },
    dollars = 8,
    boss_colour = HEX("70b133"),

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
        local money = G.GAME.dollars or 0

        if money > 0 then
            local new_mult = math.floor(mult / money)
            if new_mult < 1 then
                new_mult = 1
            end
            G.GAME.blind.triggered = true

            return new_mult, hand_chips
        end

        return mult, hand_chips
    end,

    attributes = { "money" },
}