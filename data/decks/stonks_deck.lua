SMODS.Back {
    key = "stonks_deck",

    loc_txt = {
        name = "Stonks Deck",
        text = {
            "Start with {C:money}$10{}",
            "Start with {C:money}Seed Money{}",
            "Start with a {C:purple}Negative{} and {C:purple}Eternal{}",
            "{C:attention}To the Moon{}",
            "Start with {C:red}1 less{} {C:blue}hand{}"
        }
    },

    atlas = "atlas_deck",
    pos = { x = 0, y = 0 },

    unlocked = true,
    discovered = true,

    config = {
        vouchers = {
            "v_seed_money"
        }
    },

    apply = function(self, back)
        G.GAME.starting_params.dollars = 10

        G.GAME.starting_params.hands =
            G.GAME.starting_params.hands - 1

        G.E_MANAGER:add_event(Event({
            func = function()
                local card = create_card(
                    "Joker",
                    G.jokers,
                    nil,
                    nil,
                    nil,
                    nil,
                    "j_to_the_moon"
                )

                card:add_to_deck()

                card:set_edition({
                    negative = true
                }, true)

                card.ability.eternal = true

                G.jokers:emplace(card)

                return true
            end
        }))
    end
}