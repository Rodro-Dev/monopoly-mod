
SMODS.Back {
    key = 'stonks_deck',
    pos = { x = 0, y = 0 },
    config = {
        vouchers = { "v_seed_money" },
    },
    loc_txt = {
        name = 'Stonks Deck',
        text = {
            [1] = 'Start with {C:money}$10{}',
            [2] = 'Start with {C:money}Seed Money{}',
            [3] = 'Add a {C:dark_edition}Negative{} {C:purple}Eternal{}',
            [4] = '{C:attention}To the Moon{} each Ante',
            [5] = 'Start with {C:attention}1{} less {C:blue}hand{}',
            [6] = 'Start with {C:attention}1{} less {C:red}discard{}'
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'atlas_deck',
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('timpani')
                    local new_joker = SMODS.add_card({ set = 'Joker', key = 'j_to_the_moon' })
                    if new_joker then
                        new_joker:set_edition("e_negative", true)
                        new_joker:add_sticker('eternal', true)
                    end
                    return true
                end
            }))
        end
    end,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                play_sound('timpani')
                local new_joker = SMODS.add_card({ set = 'Joker', key = 'j_to_the_moon' })
                if new_joker then
                    new_joker:set_edition("e_negative", true)
                    new_joker:add_sticker('eternal', true)
                end
                return true
            end
        }))
        G.GAME.starting_params.hands = G.GAME.starting_params.hands - 1
        G.GAME.starting_params.discards = G.GAME.starting_params.discards - 1
        G.GAME.starting_params.dollars = 10
    end
}